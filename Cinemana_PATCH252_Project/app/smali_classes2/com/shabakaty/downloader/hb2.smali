.class public final Lcom/shabakaty/downloader/hb2;
.super Lcom/shabakaty/downloader/af2;
.source "JvmBuiltInsCustomizer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/tq;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ab2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ab2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/hb2;->r:Lcom/shabakaty/downloader/ab2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tq;

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/tq;->w()Lcom/shabakaty/downloader/tq$a;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/hb2;->r:Lcom/shabakaty/downloader/ab2;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/ab2;->b:Lcom/shabakaty/downloader/f82;

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/sm0;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/q20;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/f82;->b(Lcom/shabakaty/downloader/q20;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
