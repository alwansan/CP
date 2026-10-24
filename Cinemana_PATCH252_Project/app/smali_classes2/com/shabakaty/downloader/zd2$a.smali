.class public Lcom/shabakaty/downloader/zd2$a;
.super Ljava/lang/Object;
.source "KotlinBuiltIns.java"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/zd2;-><init>(Lcom/shabakaty/downloader/md4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/Collection<",
        "Lcom/shabakaty/downloader/t93;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/zd2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/zd2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zd2$a;->r:Lcom/shabakaty/downloader/zd2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shabakaty/downloader/t93;

    .line 1
    iget-object v1, p0, Lcom/shabakaty/downloader/zd2$a;->r:Lcom/shabakaty/downloader/zd2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zd2;->l()Lcom/shabakaty/downloader/qu2;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/qu2;->t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/zd2$a;->r:Lcom/shabakaty/downloader/zd2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zd2;->l()Lcom/shabakaty/downloader/qu2;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/tb4;->k:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/qu2;->t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/zd2$a;->r:Lcom/shabakaty/downloader/zd2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zd2;->l()Lcom/shabakaty/downloader/qu2;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/tb4;->l:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/qu2;->t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/zd2$a;->r:Lcom/shabakaty/downloader/zd2;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/zd2;->l()Lcom/shabakaty/downloader/qu2;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/downloader/tb4;->j:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/qu2;->t0(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/t93;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
