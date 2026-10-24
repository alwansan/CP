.class public final Lcom/shabakaty/downloader/ab2$b;
.super Lcom/shabakaty/downloader/af2;
.source "JvmBuiltInsCustomizer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ab2;-><init>(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/rm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/b74;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ab2;

.field public final synthetic s:Lcom/shabakaty/downloader/md4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ab2;Lcom/shabakaty/downloader/md4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ab2$b;->r:Lcom/shabakaty/downloader/ab2;

    iput-object p2, p0, Lcom/shabakaty/downloader/ab2$b;->s:Lcom/shabakaty/downloader/md4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ab2$b;->r:Lcom/shabakaty/downloader/ab2;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ab2;->g()Lcom/shabakaty/downloader/xa2$b;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xa2$b;->a:Lcom/shabakaty/downloader/nu2;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/va2;->d:Lcom/shabakaty/downloader/va2$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/va2;->h:Lcom/shabakaty/downloader/v20;

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/b03;

    iget-object v3, p0, Lcom/shabakaty/downloader/ab2$b;->s:Lcom/shabakaty/downloader/md4;

    iget-object v4, p0, Lcom/shabakaty/downloader/ab2$b;->r:Lcom/shabakaty/downloader/ab2;

    .line 7
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ab2;->g()Lcom/shabakaty/downloader/xa2$b;

    move-result-object v4

    .line 8
    iget-object v4, v4, Lcom/shabakaty/downloader/xa2$b;->a:Lcom/shabakaty/downloader/nu2;

    .line 9
    invoke-direct {v2, v3, v4}, Lcom/shabakaty/downloader/b03;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/nu2;)V

    .line 10
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/rb1;->c(Lcom/shabakaty/downloader/nu2;Lcom/shabakaty/downloader/v20;Lcom/shabakaty/downloader/b03;)Lcom/shabakaty/downloader/q20;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/shabakaty/downloader/q20;->x()Lcom/shabakaty/downloader/b74;

    move-result-object v0

    return-object v0
.end method
