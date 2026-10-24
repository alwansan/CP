.class public final Lcom/shabakaty/downloader/o13$a;
.super Lcom/shabakaty/downloader/af2;
.source "NotificationsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/o13;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/cinemana/domain/models/local/user/NotificationsList;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/o13;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/o13;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/o13$a;->r:Lcom/shabakaty/downloader/o13;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/NotificationsList;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/cinemana/domain/models/local/user/NotificationsList;->notifications:Ljava/util/List;

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/o13$a;->r:Lcom/shabakaty/downloader/o13;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/o13;->g:Lcom/shabakaty/downloader/mj;

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/zi2;->l(Lcom/shabakaty/downloader/mj;)V

    goto :goto_3

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/o13$a;->r:Lcom/shabakaty/downloader/o13;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/o13;->g:Lcom/shabakaty/downloader/mj;

    .line 9
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/mj;->b(Ljava/lang/Object;)V

    .line 10
    :goto_3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
