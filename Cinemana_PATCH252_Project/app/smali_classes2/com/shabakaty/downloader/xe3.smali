.class public final Lcom/shabakaty/downloader/xe3;
.super Ljava/lang/Object;
.source "predefinedEnhancementInfo.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/zs4;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/zs4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    const-string v2, "parametersInfo"

    .line 5
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/xe3;->a:Lcom/shabakaty/downloader/zs4;

    .line 8
    iput-object v1, p0, Lcom/shabakaty/downloader/xe3;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/zs4;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/zs4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/zs4;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/xe3;->a:Lcom/shabakaty/downloader/zs4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/xe3;->b:Ljava/util/List;

    return-void
.end method
