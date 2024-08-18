-- points 테이블은 프란시스 앤스컴이 만든 Anscombe's quartet 데이터를 담고 있습니다. 이 데이터는 quartet 컬럼에 의해 4개의 서브셋으로 나뉘어지고, 각 서브셋은 평균, 표본 분산, 상관계수 등이 거의 동일하나 데이터의 분포를 시각화하면 전혀 다른 분포를 가지는 특징이 있습니다.
-- points 테이블에 쿼리를 수행해 quartet으로 구분되는 각 서브셋 데이터에 대해서 아래 통계량을 계산하는 쿼리를 작성해주세요. 계산된 값은 소수점 아래 셋째 자리에서 반올림 해야 합니다. 결과 데이터에는 아래 5개의 컬럼이 존재 해야 합니다.
-- quartet - 콰르텟
-- x_mean - x 평균
-- x_var - x 표본 분산
-- y_mean - y 평균
-- y_var - y 표본 분산

SELECT 
    quartet,
    ROUND(AVG(x), 2) AS x_mean,
    ROUND(VARIANCE(x), 2) AS x_var,
    ROUND(AVG(y), 2) AS y_mean,
    ROUND(VARIANCE(y), 2) AS y_var
FROM 
    points
GROUP BY 
    quartet;