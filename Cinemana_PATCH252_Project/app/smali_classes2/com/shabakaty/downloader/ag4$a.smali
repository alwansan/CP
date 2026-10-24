.class public final Lcom/shabakaty/downloader/ag4$a;
.super Lcom/shabakaty/downloader/af2;
.source "SubstitutingScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ag4;-><init>(Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/wt4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/Collection<",
        "+",
        "Lcom/shabakaty/downloader/qm0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ag4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ag4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ag4$a;->r:Lcom/shabakaty/downloader/ag4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ag4$a;->r:Lcom/shabakaty/downloader/ag4;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ag4;->b:Lcom/shabakaty/downloader/mr2;

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v3, v3, v2, v3}, Lcom/shabakaty/downloader/ls3$a;->a(Lcom/shabakaty/downloader/ls3;Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;ILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ag4;->i(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
