.class public Lcom/facebook/appevents/ml/MTensor;
.super Ljava/lang/Object;
.source "MTensor.java"


# instance fields
.field public a:[F

.field public b:[I

.field public c:I


# direct methods
.method public constructor <init>([I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 4
    aget v2, p1, v1

    mul-int v0, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p0, Lcom/facebook/appevents/ml/MTensor;->c:I

    .line 6
    new-array p1, v0, [F

    iput-object p1, p0, Lcom/facebook/appevents/ml/MTensor;->a:[F

    return-void
.end method
