.class public final Lcom/shabakaty/downloader/rc4$a;
.super Lcom/shabakaty/downloader/af2;
.source "StaticScopeForKotlinEnum.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/rc4;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/q20;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/t64;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/rc4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rc4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/rc4$a;->r:Lcom/shabakaty/downloader/rc4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/shabakaty/downloader/t64;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/rc4$a;->r:Lcom/shabakaty/downloader/rc4;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/rc4;->b:Lcom/shabakaty/downloader/q20;

    .line 3
    invoke-static {v1}, Lcom/shabakaty/downloader/tq0;->d(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/t64;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/shabakaty/downloader/rc4$a;->r:Lcom/shabakaty/downloader/rc4;

    .line 4
    iget-object v2, v2, Lcom/shabakaty/downloader/rc4;->b:Lcom/shabakaty/downloader/q20;

    .line 5
    invoke-static {v2}, Lcom/shabakaty/downloader/tq0;->e(Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/t64;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
