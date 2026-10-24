.class public final Lcom/shabakaty/downloader/k44;
.super Lcom/shabakaty/downloader/af2;
.source "ShabakatyValidator.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/j44$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j44$a;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/k44;->r:Lcom/shabakaty/downloader/j44$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/k44;->r:Lcom/shabakaty/downloader/j44$a;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/j44$a;->c:Lcom/shabakaty/downloader/kf2;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mq3;

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/mq3;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
