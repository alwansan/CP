.class public final Lcom/shabakaty/downloader/cf3;
.super Ljava/lang/Object;
.source "PreferenceDao_Impl.java"

# interfaces
.implements Lcom/shabakaty/downloader/bf3;


# instance fields
.field public final a:Lcom/shabakaty/downloader/vt3;

.field public final b:Lcom/shabakaty/downloader/x31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x31<",
            "Lcom/shabakaty/downloader/af3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vt3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/cf3;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/cf3$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/cf3$a;-><init>(Lcom/shabakaty/downloader/cf3;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/cf3;->b:Lcom/shabakaty/downloader/x31;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yt3;->T0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/cf3;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/cf3;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 13
    throw v1
.end method

.method public b(Lcom/shabakaty/downloader/af3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cf3;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/cf3;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cf3;->b:Lcom/shabakaty/downloader/x31;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x31;->f(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/cf3;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/cf3;->a:Lcom/shabakaty/downloader/vt3;

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/cf3;->a:Lcom/shabakaty/downloader/vt3;

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 11
    throw p1
.end method
