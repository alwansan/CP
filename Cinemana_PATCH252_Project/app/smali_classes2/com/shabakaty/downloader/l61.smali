.class public final Lcom/shabakaty/downloader/l61;
.super Ljava/lang/Object;
.source "DescriptorRenderer.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/l61;

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/fi1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/shabakaty/downloader/fi1;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/fi1;

    const-string v2, "kotlin.internal.NoInfer"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/fi1;

    const-string v2, "kotlin.internal.Exact"

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/nl6;->t([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/l61;->b:Ljava/util/Set;

    return-void
.end method
