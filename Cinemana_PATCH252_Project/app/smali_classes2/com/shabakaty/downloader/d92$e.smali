.class public Lcom/shabakaty/downloader/d92$e;
.super Ljava/lang/Thread;
.source "JmDNSImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/d92;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/d92;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d92;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/d92$e;->r:Lcom/shabakaty/downloader/d92;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d92$e;->r:Lcom/shabakaty/downloader/d92;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v4, v0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "recover() Cleanning up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 6
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    const-string v3, "RECOVERING"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/zi0;->a()V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    iget-object v3, v0, Lcom/shabakaty/downloader/d92;->x:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->C0()V

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->K()V

    const-wide/16 v3, 0x1388

    .line 13
    iget-object v5, v0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 14
    iget-object v6, v5, Lcom/shabakaty/downloader/jv1;->s:Ljava/net/InetAddress;

    if-nez v6, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    iget-object v5, v5, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    invoke-virtual {v5, v3, v4}, Lcom/shabakaty/downloader/xi0$b;->m(J)Z

    .line 16
    :goto_0
    invoke-static {}, Lcom/shabakaty/downloader/zi0$b;->a()Lcom/shabakaty/downloader/zi0$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/zi0$b;->b(Lcom/shabakaty/downloader/d92;)Lcom/shabakaty/downloader/zi0;

    move-result-object v3

    invoke-interface {v3}, Lcom/shabakaty/downloader/zi0;->p()V

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->J()V

    .line 18
    iget-object v3, v0, Lcom/shabakaty/downloader/d92;->w:Lcom/shabakaty/downloader/ji0;

    .line 19
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 20
    sget-object v3, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 21
    sget-object v2, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    iget-object v4, v0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "recover() All is clean"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 24
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->Y()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/j14;

    .line 26
    check-cast v3, Lcom/shabakaty/downloader/k14;

    .line 27
    iget-object v3, v3, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/xi0$b;->g()Z

    goto :goto_1

    .line 28
    :cond_3
    iget-object v2, v0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 29
    iget-object v2, v2, Lcom/shabakaty/downloader/jv1;->u:Lcom/shabakaty/downloader/jv1$a;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/xi0$b;->g()Z

    .line 30
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 31
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/d92;->l0(Lcom/shabakaty/downloader/jv1;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/d92;->x0(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 33
    sget-object v2, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    iget-object v5, v0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    const-string v6, "recover() Start services exception "

    .line 35
    invoke-static {v4, v5, v6}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :goto_2
    sget-object v1, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    iget-object v0, v0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "recover() We are back!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    .line 39
    :cond_4
    sget-object v1, Lcom/shabakaty/downloader/d92;->J:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    iget-object v0, v0, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "recover() Could not recover we are Down!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
