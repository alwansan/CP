.class public Lcom/shabakaty/downloader/xi0$b;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "DNSStatefulObject.java"

# interfaces
.implements Lcom/shabakaty/downloader/xi0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static w:Ljava/util/logging/Logger;


# instance fields
.field public volatile r:Lcom/shabakaty/downloader/d92;

.field public volatile s:Lcom/shabakaty/downloader/yi0;

.field public volatile t:Lcom/shabakaty/downloader/vi0;

.field public final u:Lcom/shabakaty/downloader/xi0$a;

.field public final v:Lcom/shabakaty/downloader/xi0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/xi0$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/xi0$b;->w:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/vi0;->t:Lcom/shabakaty/downloader/vi0;

    iput-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/xi0$a;

    const-string v1, "Announce"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xi0$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->u:Lcom/shabakaty/downloader/xi0$a;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/xi0$a;

    const-string v1, "Cancel"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xi0$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->v:Lcom/shabakaty/downloader/xi0$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yi0;Lcom/shabakaty/downloader/vi0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    if-ne v0, p2, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    if-ne v0, p2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xi0$b;->k(Lcom/shabakaty/downloader/yi0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/vi0;->z:Lcom/shabakaty/downloader/vi0;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xi0$b;->j(Lcom/shabakaty/downloader/vi0;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xi0$b;->k(Lcom/shabakaty/downloader/yi0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    :goto_0
    return v1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vi0;->h()Z

    move-result v0

    return v0
.end method

.method public d(Lcom/shabakaty/downloader/yi0;Lcom/shabakaty/downloader/vi0;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public e(Lcom/shabakaty/downloader/yi0;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    if-ne v0, p1, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    if-ne v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vi0;->f()Lcom/shabakaty/downloader/vi0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xi0$b;->j(Lcom/shabakaty/downloader/vi0;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/xi0$b;->w:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to advance state whhen not the owner. owner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " perpetrator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/vi0;->s:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    sget-object v0, Lcom/shabakaty/downloader/vi0;->t:Lcom/shabakaty/downloader/vi0;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xi0$b;->j(Lcom/shabakaty/downloader/vi0;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xi0$b;->k(Lcom/shabakaty/downloader/yi0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public h(Lcom/shabakaty/downloader/yi0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    if-ne v0, p1, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/xi0$b;->k(Lcom/shabakaty/downloader/yi0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public i()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    sget-object v0, Lcom/shabakaty/downloader/vi0;->E:Lcom/shabakaty/downloader/vi0;

    goto :goto_0

    .line 7
    :pswitch_1
    sget-object v0, Lcom/shabakaty/downloader/vi0;->D:Lcom/shabakaty/downloader/vi0;

    goto :goto_0

    .line 8
    :pswitch_2
    sget-object v0, Lcom/shabakaty/downloader/vi0;->C:Lcom/shabakaty/downloader/vi0;

    goto :goto_0

    .line 9
    :pswitch_3
    sget-object v0, Lcom/shabakaty/downloader/vi0;->z:Lcom/shabakaty/downloader/vi0;

    goto :goto_0

    .line 10
    :pswitch_4
    sget-object v0, Lcom/shabakaty/downloader/vi0;->t:Lcom/shabakaty/downloader/vi0;

    .line 11
    :goto_0
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xi0$b;->j(Lcom/shabakaty/downloader/vi0;)V

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/xi0$b;->k(Lcom/shabakaty/downloader/yi0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j(Lcom/shabakaty/downloader/vi0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->u:Lcom/shabakaty/downloader/xi0$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xi0$a;->a()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->v:Lcom/shabakaty/downloader/xi0$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xi0$a;->a()V

    .line 7
    iget-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->u:Lcom/shabakaty/downloader/xi0$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/xi0$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public k(Lcom/shabakaty/downloader/yi0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    return-void
.end method

.method public l(J)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->c()Z

    move-result v0

    const-wide/16 v1, 0xa

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->u:Lcom/shabakaty/downloader/xi0$a;

    add-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xi0$a;->b(J)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->c()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->u:Lcom/shabakaty/downloader/xi0$a;

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/xi0$a;->b(J)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->c()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->n()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/xi0$b;->w:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wait for announced timed out: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/xi0$b;->w:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wait for announced cancelled: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->c()Z

    move-result p1

    return p1
.end method

.method public m(J)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->v:Lcom/shabakaty/downloader/xi0$a;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xi0$a;->b(J)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->f()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/xi0$b;->v:Lcom/shabakaty/downloader/xi0$a;

    const-wide/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/xi0$a;->b(J)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->f()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->o()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/xi0$b;->w:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wait for canceled timed out: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi0$b;->f()Z

    move-result p1

    return p1
.end method

.method public final n()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/vi0;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vi0;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final o()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/vi0;->s:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    .line 4
    iget v0, v0, Lcom/shabakaty/downloader/vi0;->s:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, " task: "

    const-string v1, " state: "

    const-string v2, "DNS: "

    const-string v3, "NO DNS"

    .line 1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    .line 2
    iget-object v6, v6, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    .line 4
    iget-object v6, v6, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 5
    iget-object v6, v6, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    nop

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    if-eqz v5, :cond_1

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/xi0$b;->r:Lcom/shabakaty/downloader/d92;

    .line 8
    iget-object v3, v3, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/xi0$b;->t:Lcom/shabakaty/downloader/vi0;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/shabakaty/downloader/xi0$b;->s:Lcom/shabakaty/downloader/yi0;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
