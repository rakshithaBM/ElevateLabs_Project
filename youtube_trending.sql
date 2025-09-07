-- ===========================================
-- YouTube Trending Analytics SQL Script
-- ===========================================

-- (A) Most popular genres (by total views)
SELECT 
    COALESCE(category_id, 'Unknown') AS category,
    SUM(views) AS total_views
FROM youtube_trending
GROUP BY category
ORDER BY total_views DESC;

-- (B) Rank categories by average views
SELECT 
    COALESCE(category_id, 'Unknown') AS category,
    AVG(views) AS avg_views
FROM youtube_trending
GROUP BY category
ORDER BY avg_views DESC;

-- (C) Region-wise comparison (avg views & engagement)
SELECT 
    region,
    AVG(views) AS avg_views,
    AVG(CAST((likes + comment_count) AS FLOAT) / NULLIF(views,0)) AS avg_engagement_rate
FROM youtube_trending
GROUP BY region
ORDER BY avg_views DESC;

-- (D) Time-series: monthly unique trending videos
SELECT 
    strftime('%Y-%m', publish_time) AS month_year,
    region,
    COUNT(DISTINCT video_id) AS unique_trending_videos
FROM youtube_trending
GROUP BY month_year, region
ORDER BY month_year, region;

-- (E) Trending duration (summary per region)
WITH t AS (
    SELECT 
        video_id, 
        region, 
        COUNT(DISTINCT publish_time) AS days
    FROM youtube_trending
    GROUP BY video_id, region
)
SELECT 
    region,
    ROUND(AVG(days),2) AS avg_trending_days,
    MAX(days) AS max_trending_days
FROM t
GROUP BY region
ORDER BY avg_trending_days DESC;

-- (F) Sentiment by category
-- (NOTE: Only works if you precomputed sentiment scores for titles & tags)
-- If you don’t have title_sentiment and tags_sentiment, skip this part.
SELECT 
    COALESCE(category_id, 'Unknown') AS category,
    ROUND(AVG(title_sentiment),3) AS avg_title_sentiment,
    ROUND(AVG(tags_sentiment),3)  AS avg_tags_sentiment
FROM youtube_trending
GROUP BY category
ORDER BY avg_title_sentiment DESC;
