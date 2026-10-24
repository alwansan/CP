.class public Lcom/facebook/appevents/ml/Model$1;
.super Ljava/util/HashSet;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/ml/Model;-><init>(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/ml/Model;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 2
    sget-object p1, Lcom/facebook/appevents/ml/ModelManager$Task;->r:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {p1}, Lcom/facebook/appevents/ml/ModelManager$Task;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object p1, Lcom/facebook/appevents/ml/ModelManager$Task;->s:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {p1}, Lcom/facebook/appevents/ml/ModelManager$Task;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
