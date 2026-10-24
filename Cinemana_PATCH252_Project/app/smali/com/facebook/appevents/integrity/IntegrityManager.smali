.class public final Lcom/facebook/appevents/integrity/IntegrityManager;
.super Ljava/lang/Object;
.source "IntegrityManager.java"


# static fields
.field public static a:Z

.field public static b:Z


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 5

    const/16 v0, 0x1e

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2
    sget-object v1, Lcom/facebook/appevents/ml/ModelManager$Task;->r:Lcom/facebook/appevents/ml/ModelManager$Task;

    const/4 v2, 0x1

    new-array v3, v2, [[F

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-array v0, v2, [Ljava/lang/String;

    aput-object p0, v0, v4

    .line 3
    invoke-static {v1, v3, v0}, Lcom/facebook/appevents/ml/ModelManager;->c(Lcom/facebook/appevents/ml/ModelManager$Task;[[F[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v0, "none"

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 4
    :cond_0
    aget-object p0, p0, v4

    .line 5
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method
