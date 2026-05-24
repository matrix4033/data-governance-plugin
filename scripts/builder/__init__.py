# Builder CLI — 确定性 SQL 质量检查规则生成器
# 覆盖 5 个维度：validity / uniqueness / completeness / consistency / accuracy
# 80% 常见规则无需 LLM，由本地 Builder 生成

from builder.base import BaseBuilder, Rule
from builder.validity import ValidityBuilder
from builder.uniqueness import UniquenessBuilder
from builder.completeness import CompletenessBuilder
from builder.consistency import ConsistencyBuilder
from builder.accuracy import AccuracyBuilder

__all__ = ["BaseBuilder", "Rule", "ValidityBuilder", "UniquenessBuilder",
           "CompletenessBuilder", "ConsistencyBuilder", "AccuracyBuilder"]
