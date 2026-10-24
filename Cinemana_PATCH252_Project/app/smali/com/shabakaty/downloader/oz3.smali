.class public final Lcom/shabakaty/downloader/oz3;
.super Lcom/shabakaty/downloader/af2;
.source "SearchViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/hz3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hz3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/oz3;->r:Lcom/shabakaty/downloader/hz3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/oz3;->r:Lcom/shabakaty/downloader/hz3;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/hz3;->x:Lcom/shabakaty/downloader/mj;

    .line 5
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/zi2;->m(Lcom/shabakaty/downloader/mj;Ljava/lang/Throwable;)V

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
