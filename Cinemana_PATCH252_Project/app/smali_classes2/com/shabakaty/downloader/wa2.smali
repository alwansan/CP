.class public final Lcom/shabakaty/downloader/wa2;
.super Lcom/shabakaty/downloader/af2;
.source "JvmBuiltInClassDescriptorFactory.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/t20;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/va2;

.field public final synthetic s:Lcom/shabakaty/downloader/md4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/va2;Lcom/shabakaty/downloader/md4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wa2;->r:Lcom/shabakaty/downloader/va2;

    iput-object p2, p0, Lcom/shabakaty/downloader/wa2;->s:Lcom/shabakaty/downloader/md4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v9, Lcom/shabakaty/downloader/t20;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wa2;->r:Lcom/shabakaty/downloader/va2;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/va2;->b:Lcom/shabakaty/downloader/tm1;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/va2;->a:Lcom/shabakaty/downloader/nu2;

    .line 5
    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/qm0;

    .line 6
    sget-object v2, Lcom/shabakaty/downloader/va2;->g:Lcom/shabakaty/downloader/hw2;

    .line 7
    sget-object v3, Lcom/shabakaty/downloader/eu2;->u:Lcom/shabakaty/downloader/eu2;

    sget-object v4, Lcom/shabakaty/downloader/w20;->s:Lcom/shabakaty/downloader/w20;

    iget-object v0, p0, Lcom/shabakaty/downloader/wa2;->r:Lcom/shabakaty/downloader/va2;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/va2;->a:Lcom/shabakaty/downloader/nu2;

    .line 9
    invoke-interface {v0}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/zd2;->f()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/iq6;->o(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 10
    sget-object v6, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/shabakaty/downloader/wa2;->s:Lcom/shabakaty/downloader/md4;

    move-object v0, v9

    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/shabakaty/downloader/t20;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/w20;Ljava/util/Collection;Lcom/shabakaty/downloader/s94;ZLcom/shabakaty/downloader/md4;)V

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/wa2;->s:Lcom/shabakaty/downloader/md4;

    .line 13
    new-instance v1, Lcom/shabakaty/downloader/z30;

    invoke-direct {v1, v0, v9}, Lcom/shabakaty/downloader/z30;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/q20;)V

    sget-object v0, Lcom/shabakaty/downloader/c31;->r:Lcom/shabakaty/downloader/c31;

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v0, v2}, Lcom/shabakaty/downloader/t20;->T0(Lcom/shabakaty/downloader/mr2;Ljava/util/Set;Lcom/shabakaty/downloader/l20;)V

    return-object v9
.end method
