.class public final Lcom/shabakaty/downloader/yx4;
.super Lcom/shabakaty/downloader/af2;
.source "UserListDetailsViewModel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/cinemana/domain/models/local/user/UserList;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/by4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/by4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/yx4;->r:Lcom/shabakaty/downloader/by4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/cinemana/domain/models/local/user/UserList;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p1, Lcom/shabakaty/cinemana/domain/models/local/user/UserList;->data:Ljava/util/List;

    if-nez v1, :cond_1

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/yx4;->r:Lcom/shabakaty/downloader/by4;

    .line 5
    iput-boolean v3, v1, Lcom/shabakaty/downloader/by4;->g:Z

    goto :goto_2

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/yx4;->r:Lcom/shabakaty/downloader/by4;

    .line 7
    iget v2, v1, Lcom/shabakaty/downloader/by4;->h:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/shabakaty/downloader/by4;->h:I

    .line 8
    :goto_2
    iget-object v1, p0, Lcom/shabakaty/downloader/yx4;->r:Lcom/shabakaty/downloader/by4;

    .line 9
    iget-object v1, v1, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_3

    .line 10
    :cond_3
    iget-object p1, p1, Lcom/shabakaty/cinemana/domain/models/local/user/UserList;->data:Ljava/util/List;

    .line 11
    :goto_3
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/zi2;->a(Lcom/shabakaty/downloader/mj;Ljava/util/List;)V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/yx4;->r:Lcom/shabakaty/downloader/by4;

    .line 13
    iget-object p1, p1, Lcom/shabakaty/downloader/by4;->j:Lcom/shabakaty/downloader/mj;

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/mj;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/shabakaty/downloader/yx4;->r:Lcom/shabakaty/downloader/by4;

    .line 15
    iget v0, p1, Lcom/shabakaty/downloader/by4;->h:I

    if-nez v0, :cond_6

    .line 16
    iget-object p1, p1, Lcom/shabakaty/downloader/xk;->d:Lcom/shabakaty/downloader/xv2;

    .line 17
    sget-object v0, Lcom/shabakaty/downloader/tj$a;->u:Lcom/shabakaty/downloader/tj$a;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/xv2;->postValue(Ljava/lang/Object;)V

    .line 18
    :cond_6
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
