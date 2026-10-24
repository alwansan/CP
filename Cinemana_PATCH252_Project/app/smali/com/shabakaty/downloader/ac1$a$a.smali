.class public final Lcom/shabakaty/downloader/ac1$a$a;
.super Lcom/shabakaty/downloader/af2;
.source "FinishedDownloadHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ac1$a;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/vb1$a;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ac1$a$a;->r:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/vb1$a;

    const-string v0, "$this$finishedDownloadBottomSheet"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ac1$a$a;->r:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    new-instance v1, Lcom/shabakaty/downloader/yb1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/yb1;-><init>(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;I)V

    const-string v0, "<this>"

    .line 4
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listener"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, p1, Lcom/shabakaty/downloader/vb1$a;->a:Lcom/shabakaty/downloader/vb1;

    new-instance v4, Lcom/shabakaty/downloader/ub1;

    invoke-direct {v4, v1}, Lcom/shabakaty/downloader/ub1;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v4, v3, Lcom/shabakaty/downloader/vb1;->a:Lcom/shabakaty/downloader/rm1;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/ac1$a$a;->r:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    new-instance v3, Lcom/shabakaty/downloader/yb1;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/shabakaty/downloader/yb1;-><init>(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;I)V

    .line 8
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v1, p1, Lcom/shabakaty/downloader/vb1$a;->a:Lcom/shabakaty/downloader/vb1;

    new-instance v4, Lcom/shabakaty/downloader/tb1;

    invoke-direct {v4, v3}, Lcom/shabakaty/downloader/tb1;-><init>(Ljava/lang/Object;)V

    .line 10
    iput-object v4, v1, Lcom/shabakaty/downloader/vb1;->b:Lcom/shabakaty/downloader/rm1;

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/ac1$a$a;->r:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    new-instance v3, Lcom/shabakaty/downloader/yb1;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4}, Lcom/shabakaty/downloader/yb1;-><init>(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;I)V

    .line 12
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v1, p1, Lcom/shabakaty/downloader/vb1$a;->a:Lcom/shabakaty/downloader/vb1;

    new-instance v2, Lcom/shabakaty/downloader/sb1;

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/sb1;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object v2, v1, Lcom/shabakaty/downloader/vb1;->c:Lcom/shabakaty/downloader/rm1;

    .line 15
    new-instance v1, Lcom/shabakaty/downloader/zb1;

    iget-object v2, p0, Lcom/shabakaty/downloader/ac1$a$a;->r:Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/zb1;-><init>(Lcom/shabakaty/cinemana/utils/download/FinishedDownloadScope;)V

    .line 16
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p1, p1, Lcom/shabakaty/downloader/vb1$a;->a:Lcom/shabakaty/downloader/vb1;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/zb1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
