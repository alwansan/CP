.class public final Lcom/shabakaty/downloader/bk4;
.super Ljava/lang/Object;
.source "SystemIdInfoDao_Impl.java"

# interfaces
.implements Lcom/shabakaty/downloader/ak4;


# instance fields
.field public final a:Lcom/shabakaty/downloader/vt3;

.field public final b:Lcom/shabakaty/downloader/x31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/x31<",
            "Lcom/shabakaty/downloader/zj4;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/f54;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vt3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/bk4$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/bk4$a;-><init>(Lcom/shabakaty/downloader/bk4;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/bk4;->b:Lcom/shabakaty/downloader/x31;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/bk4$b;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/bk4$b;-><init>(Lcom/shabakaty/downloader/bk4;Lcom/shabakaty/downloader/vt3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/bk4;->c:Lcom/shabakaty/downloader/f54;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/shabakaty/downloader/zj4;
    .locals 5

    const-string v0, "SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?"

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
    iget-object p1, p0, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "work_spec_id"

    .line 6
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "system_id"

    .line 7
    invoke-static {p1, v3}, Lcom/shabakaty/downloader/yg0;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 11
    new-instance v3, Lcom/shabakaty/downloader/zj4;

    invoke-direct {v3, v1, v2}, Lcom/shabakaty/downloader/zj4;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 12
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 14
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 15
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 16
    throw v1
.end method

.method public b(Lcom/shabakaty/downloader/zj4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bk4;->b:Lcom/shabakaty/downloader/x31;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x31;->f(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    .line 10
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 11
    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bk4;->c:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f54;->a()Lcom/shabakaty/downloader/ci4;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ai4;->T0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/ai4;->I(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/ci4;->P()I

    .line 9
    iget-object p1, p0, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/bk4;->c:Lcom/shabakaty/downloader/f54;

    .line 13
    iget-object v1, p1, Lcom/shabakaty/downloader/f54;->c:Lcom/shabakaty/downloader/ci4;

    if-ne v0, v1, :cond_1

    .line 14
    iget-object p1, p1, Lcom/shabakaty/downloader/f54;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/bk4;->a:Lcom/shabakaty/downloader/vt3;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 17
    iget-object v1, p0, Lcom/shabakaty/downloader/bk4;->c:Lcom/shabakaty/downloader/f54;

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/f54;->d(Lcom/shabakaty/downloader/ci4;)V

    .line 18
    throw p1
.end method
