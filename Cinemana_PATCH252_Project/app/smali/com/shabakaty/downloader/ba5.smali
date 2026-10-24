.class public final Lcom/shabakaty/downloader/ba5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/na5;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/j;

.field public final b:Ljava/util/concurrent/locks/Lock;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/shabakaty/downloader/qq1;

.field public e:Lcom/shabakaty/downloader/gb0;

.field public f:I

.field public g:I

.field public h:I

.field public final i:Landroid/os/Bundle;

.field public final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/shabakaty/downloader/mb5;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Lcom/shabakaty/downloader/uw1;

.field public p:Z

.field public q:Z

.field public final r:Lcom/shabakaty/downloader/t30;

.field public final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/shabakaty/downloader/mb5;",
            "Lcom/shabakaty/downloader/x54;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/j;Lcom/shabakaty/downloader/t30;Ljava/util/Map;Lcom/shabakaty/downloader/qq1;Lcom/google/android/gms/common/api/a$a;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/j;",
            "Lcom/shabakaty/downloader/t30;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/shabakaty/downloader/qq1;",
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/shabakaty/downloader/mb5;",
            "Lcom/shabakaty/downloader/x54;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/ba5;->g:I

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ba5;->i:Landroid/os/Bundle;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ba5;->j:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ba5;->u:Ljava/util/ArrayList;

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    .line 7
    iput-object p2, p0, Lcom/shabakaty/downloader/ba5;->r:Lcom/shabakaty/downloader/t30;

    .line 8
    iput-object p3, p0, Lcom/shabakaty/downloader/ba5;->s:Ljava/util/Map;

    .line 9
    iput-object p4, p0, Lcom/shabakaty/downloader/ba5;->d:Lcom/shabakaty/downloader/qq1;

    .line 10
    iput-object p5, p0, Lcom/shabakaty/downloader/ba5;->t:Lcom/google/android/gms/common/api/a$a;

    .line 11
    iput-object p6, p0, Lcom/shabakaty/downloader/ba5;->b:Ljava/util/concurrent/locks/Lock;

    .line 12
    iput-object p7, p0, Lcom/shabakaty/downloader/ba5;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ba5;->m:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/ba5;->e:Lcom/shabakaty/downloader/gb0;

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/ba5;->g:I

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/shabakaty/downloader/ba5;->l:Z

    .line 6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ba5;->n:Z

    .line 7
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ba5;->p:Z

    .line 8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 9
    iget-object v4, p0, Lcom/shabakaty/downloader/ba5;->s:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "null reference"

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/a;

    .line 10
    iget-object v7, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/j;->f:Ljava/util/Map;

    .line 11
    iget-object v8, v5, Lcom/google/android/gms/common/api/a;->b:Lcom/google/android/gms/common/api/a$g;

    .line 12
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/a$f;

    .line 13
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v6, v5, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/a$a;

    .line 15
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v6, p0, Lcom/shabakaty/downloader/ba5;->s:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 17
    invoke-interface {v7}, Lcom/google/android/gms/common/api/a$f;->E()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 18
    iput-boolean v2, p0, Lcom/shabakaty/downloader/ba5;->m:Z

    if-eqz v6, :cond_0

    .line 19
    iget-object v8, p0, Lcom/shabakaty/downloader/ba5;->j:Ljava/util/Set;

    .line 20
    iget-object v9, v5, Lcom/google/android/gms/common/api/a;->b:Lcom/google/android/gms/common/api/a$g;

    .line 21
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_0
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ba5;->l:Z

    .line 23
    :cond_1
    :goto_1
    new-instance v8, Lcom/shabakaty/downloader/ca5;

    invoke-direct {v8, p0, v5, v6}, Lcom/shabakaty/downloader/ca5;-><init>(Lcom/shabakaty/downloader/ba5;Lcom/google/android/gms/common/api/a;Z)V

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ba5;->m:Z

    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->r:Lcom/shabakaty/downloader/t30;

    .line 26
    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->t:Lcom/google/android/gms/common/api/a$a;

    .line 28
    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->r:Lcom/shabakaty/downloader/t30;

    iget-object v2, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/j;->m:Lcom/shabakaty/downloader/ka5;

    .line 30
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 32
    iput-object v2, v0, Lcom/shabakaty/downloader/t30;->h:Ljava/lang/Integer;

    .line 33
    new-instance v10, Lcom/shabakaty/downloader/ja5;

    invoke-direct {v10, p0, v1}, Lcom/shabakaty/downloader/ja5;-><init>(Lcom/shabakaty/downloader/ba5;Lcom/shabakaty/downloader/zz6;)V

    .line 34
    iget-object v4, p0, Lcom/shabakaty/downloader/ba5;->t:Lcom/google/android/gms/common/api/a$a;

    iget-object v5, p0, Lcom/shabakaty/downloader/ba5;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->m:Lcom/shabakaty/downloader/ka5;

    .line 35
    iget-object v6, v0, Lcom/shabakaty/downloader/ka5;->g:Landroid/os/Looper;

    .line 36
    iget-object v7, p0, Lcom/shabakaty/downloader/ba5;->r:Lcom/shabakaty/downloader/t30;

    .line 37
    iget-object v8, v7, Lcom/shabakaty/downloader/t30;->g:Lcom/shabakaty/downloader/x54;

    move-object v9, v10

    .line 38
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/common/api/a$a;->b(Landroid/content/Context;Landroid/os/Looper;Lcom/shabakaty/downloader/t30;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mb5;

    iput-object v0, p0, Lcom/shabakaty/downloader/ba5;->k:Lcom/shabakaty/downloader/mb5;

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/ba5;->h:I

    .line 40
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->u:Ljava/util/ArrayList;

    .line 41
    sget-object v1, Lcom/shabakaty/downloader/sa5;->a:Ljava/util/concurrent/ExecutorService;

    .line 42
    new-instance v2, Lcom/shabakaty/downloader/ea5;

    invoke-direct {v2, p0, v3}, Lcom/shabakaty/downloader/ea5;-><init>(Lcom/shabakaty/downloader/ba5;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->k:Lcom/shabakaty/downloader/mb5;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/mb5;->a()V

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->p()V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/ba5;->r:Lcom/shabakaty/downloader/t30;

    const-string v0, "null reference"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/ba5;->o:Lcom/shabakaty/downloader/uw1;

    :cond_1
    return-void
.end method

.method public final c(Lcom/shabakaty/downloader/gb0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ba5;->j()V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gb0;->W0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ba5;->b(Z)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/j;->g(Lcom/shabakaty/downloader/gb0;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->n:Lcom/shabakaty/downloader/ua5;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ua5;->b(Lcom/shabakaty/downloader/gb0;)V

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/gb0;Lcom/google/android/gms/common/api/a;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gb0;",
            "Lcom/google/android/gms/common/api/a<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/a$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gb0;->W0()Z

    move-result p3

    if-eqz p3, :cond_0

    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/shabakaty/downloader/ba5;->d:Lcom/shabakaty/downloader/qq1;

    .line 5
    iget v3, p1, Lcom/shabakaty/downloader/gb0;->s:I

    const/4 v4, 0x0

    .line 6
    invoke-virtual {p3, v4, v3, v4}, Lcom/shabakaty/downloader/qq1;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_4

    .line 7
    :cond_2
    iget-object p3, p0, Lcom/shabakaty/downloader/ba5;->e:Lcom/shabakaty/downloader/gb0;

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/shabakaty/downloader/ba5;->f:I

    if-ge v0, p3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/ba5;->e:Lcom/shabakaty/downloader/gb0;

    .line 9
    iput v0, p0, Lcom/shabakaty/downloader/ba5;->f:I

    .line 10
    :cond_5
    iget-object p3, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object p3, p3, Lcom/google/android/gms/common/api/internal/j;->g:Ljava/util/Map;

    .line 11
    iget-object p2, p2, Lcom/google/android/gms/common/api/a;->b:Lcom/google/android/gms/common/api/a$g;

    .line 12
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(I)Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ba5;->g:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->m:Lcom/shabakaty/downloader/ka5;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 4
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v0, v5, v4, v3, v4}, Lcom/shabakaty/downloader/ka5;->k(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GACConnecting"

    .line 6
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected callback in "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget v0, p0, Lcom/shabakaty/downloader/ba5;->h:I

    const/16 v3, 0x21

    const-string v5, "mRemainingConnections="

    invoke-static {v3, v5, v0, v2}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    .line 9
    iget v0, p0, Lcom/shabakaty/downloader/ba5;->g:I

    const-string v3, "UNKNOWN"

    const-string v5, "STEP_GETTING_REMOTE_SERVICE"

    const-string v6, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v0, v6

    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v5

    goto :goto_1

    :cond_3
    move-object v3, v6

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x46

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    const-string p1, "GoogleApiClient connecting is in step "

    const-string v5, " but received callback for step "

    invoke-static {v1, p1, v0, v5, v3}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 11
    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/gb0;

    const/16 v0, 0x8

    invoke-direct {p1, v0, v4}, Lcom/shabakaty/downloader/gb0;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ba5;->c(Lcom/shabakaty/downloader/gb0;)V

    const/4 p1, 0x0

    return p1

    :cond_4
    return v1
.end method

.method public final f()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ba5;->h:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shabakaty/downloader/ba5;->h:I

    const/4 v2, 0x0

    if-lez v0, :cond_0

    return v2

    :cond_0
    if-gez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->m:Lcom/shabakaty/downloader/ka5;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 4
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v0, v5, v4, v3, v4}, Lcom/shabakaty/downloader/ka5;->k(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GACConnecting"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v3, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/gb0;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v4}, Lcom/shabakaty/downloader/gb0;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ba5;->c(Lcom/shabakaty/downloader/gb0;)V

    return v2

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->e:Lcom/shabakaty/downloader/gb0;

    if-eqz v0, :cond_2

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget v3, p0, Lcom/shabakaty/downloader/ba5;->f:I

    iput v3, v1, Lcom/google/android/gms/common/api/internal/j;->l:I

    .line 11
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ba5;->c(Lcom/shabakaty/downloader/gb0;)V

    return v2

    :cond_2
    return v1
.end method

.method public final g()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ba5;->h:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ba5;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shabakaty/downloader/ba5;->n:Z

    if-eqz v0, :cond_5

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/shabakaty/downloader/ba5;->g:I

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/j;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/ba5;->h:I

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/j;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$c;

    .line 7
    iget-object v3, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/j;->g:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ba5;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ba5;->h()V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v3, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/j;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/ba5;->u:Ljava/util/ArrayList;

    .line 13
    sget-object v2, Lcom/shabakaty/downloader/sa5;->a:Ljava/util/concurrent/ExecutorService;

    .line 14
    new-instance v3, Lcom/shabakaty/downloader/fa5;

    invoke-direct {v3, p0, v0}, Lcom/shabakaty/downloader/fa5;-><init>(Lcom/shabakaty/downloader/ba5;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/j;->m:Lcom/shabakaty/downloader/ka5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ka5;->p()Z

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/aa5;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/aa5;-><init>(Lcom/google/android/gms/common/api/internal/j;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/j;->k:Lcom/shabakaty/downloader/na5;

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/j;->k:Lcom/shabakaty/downloader/na5;

    invoke-interface {v1}, Lcom/shabakaty/downloader/na5;->a()V

    .line 6
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/j;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/sa5;->a:Ljava/util/concurrent/ExecutorService;

    .line 9
    new-instance v1, Lcom/shabakaty/downloader/zz6;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/zz6;-><init>(Lcom/shabakaty/downloader/ba5;)V

    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->k:Lcom/shabakaty/downloader/mb5;

    const-string v1, "null reference"

    if-eqz v0, :cond_1

    .line 12
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ba5;->p:Z

    if-eqz v2, :cond_0

    .line 13
    iget-object v2, p0, Lcom/shabakaty/downloader/ba5;->o:Lcom/shabakaty/downloader/uw1;

    .line 14
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iget-boolean v3, p0, Lcom/shabakaty/downloader/ba5;->q:Z

    .line 16
    invoke-interface {v0, v2, v3}, Lcom/shabakaty/downloader/mb5;->c(Lcom/shabakaty/downloader/uw1;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ba5;->b(Z)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$c;

    .line 19
    iget-object v3, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/j;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$f;

    .line 20
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->p()V

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->i:Landroid/os/Bundle;

    .line 23
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/j;->n:Lcom/shabakaty/downloader/ua5;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/ua5;->t(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v1

    .line 24
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 25
    throw v1
.end method

.method public final i()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ba5;->m:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->m:Lcom/shabakaty/downloader/ka5;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/ka5;->p:Ljava/util/Set;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a$c;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/j;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/j;->g:Ljava/util/Map;

    new-instance v3, Lcom/shabakaty/downloader/gb0;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/shabakaty/downloader/gb0;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/util/concurrent/Future;

    const/4 v4, 0x1

    .line 2
    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final r(Lcom/shabakaty/downloader/gb0;Lcom/google/android/gms/common/api/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gb0;",
            "Lcom/google/android/gms/common/api/a<",
            "*>;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ba5;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ba5;->d(Lcom/shabakaty/downloader/gb0;Lcom/google/android/gms/common/api/a;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ba5;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ba5;->h()V

    :cond_1
    return-void
.end method

.method public final s()V
    .locals 0

    return-void
.end method

.method public final t(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ba5;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ba5;->i:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ba5;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ba5;->h()V

    :cond_2
    return-void
.end method

.method public final u(I)V
    .locals 2

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/gb0;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/gb0;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ba5;->c(Lcom/shabakaty/downloader/gb0;)V

    return-void
.end method

.method public final v()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ba5;->j()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ba5;->b(Z)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ba5;->a:Lcom/google/android/gms/common/api/internal/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/j;->g(Lcom/shabakaty/downloader/gb0;)V

    return v0
.end method

.method public final w(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/b<",
            "+",
            "Lcom/shabakaty/downloader/ft3;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
