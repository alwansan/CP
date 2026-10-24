.class public Lcom/facebook/drawee/drawable/DrawableProperties;
.super Ljava/lang/Object;
.source "DrawableProperties.java"


# instance fields
.field public a:I

.field public b:Z

.field public c:Landroid/graphics/ColorFilter;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/facebook/drawee/drawable/DrawableProperties;->a:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/DrawableProperties;->b:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/facebook/drawee/drawable/DrawableProperties;->c:Landroid/graphics/ColorFilter;

    .line 5
    iput v0, p0, Lcom/facebook/drawee/drawable/DrawableProperties;->d:I

    .line 6
    iput v0, p0, Lcom/facebook/drawee/drawable/DrawableProperties;->e:I

    return-void
.end method
