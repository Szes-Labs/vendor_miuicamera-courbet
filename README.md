# MiuiCamera Variant Selection

This project supports multiple MiuiCamera variants. You can choose which one to build
by setting a flag in your **lineage_courbet.mk**.

## Available Variants

| Flag                          | Camera Variant Name                  |
|-------------------------------|--------------------------------------|
| TARGET_USES_MIUICAMERA  | Stock MiuiCamera                     |
| TARGET_USES_LEICA      | Leica Camera Holy 4.5                |

## Example Configuration

In **lineage_courbet.mk**:
```make
# Choose one camera variant
TARGET_USES_LEICA := true
