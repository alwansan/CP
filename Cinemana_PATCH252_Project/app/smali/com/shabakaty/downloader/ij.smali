.class public abstract Lcom/shabakaty/downloader/ij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ij$j;,
        Lcom/shabakaty/downloader/ij$f;,
        Lcom/shabakaty/downloader/ij$k;,
        Lcom/shabakaty/downloader/ij$l;,
        Lcom/shabakaty/downloader/ij$d;,
        Lcom/shabakaty/downloader/ij$h;,
        Lcom/shabakaty/downloader/ij$g;,
        Lcom/shabakaty/downloader/ij$e;,
        Lcom/shabakaty/downloader/ij$c;,
        Lcom/shabakaty/downloader/ij$b;,
        Lcom/shabakaty/downloader/ij$a;,
        Lcom/shabakaty/downloader/ij$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final T:[Lcom/shabakaty/downloader/ia1;


# instance fields
.field public final A:Lcom/shabakaty/downloader/kq1;

.field public final B:Lcom/shabakaty/downloader/qq1;

.field public final C:Landroid/os/Handler;

.field public final D:Ljava/lang/Object;

.field public final E:Ljava/lang/Object;

.field public F:Lcom/shabakaty/downloader/cx1;

.field public G:Lcom/shabakaty/downloader/ij$c;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public H:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/ij$h<",
            "*>;>;"
        }
    .end annotation
.end field

.field public J:Lcom/shabakaty/downloader/ij$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ij$i;"
        }
    .end annotation
.end field

.field public K:I

.field public final L:Lcom/shabakaty/downloader/ij$a;

.field public final M:Lcom/shabakaty/downloader/ij$b;

.field public final N:I

.field public final O:Ljava/lang/String;

.field public P:Lcom/shabakaty/downloader/gb0;

.field public Q:Z

.field public volatile R:Lcom/shabakaty/downloader/zs5;

.field public S:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public r:I

.field public s:J

.field public t:J

.field public u:I

.field public v:J

.field public volatile w:Ljava/lang/String;

.field public x:Lcom/shabakaty/downloader/d07;

.field public final y:Landroid/content/Context;

.field public final z:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/shabakaty/downloader/ia1;

    .line 1
    sput-object v0, Lcom/shabakaty/downloader/ij;->T:[Lcom/shabakaty/downloader/ia1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/shabakaty/downloader/kq1;Lcom/shabakaty/downloader/qq1;ILcom/shabakaty/downloader/ij$a;Lcom/shabakaty/downloader/ij$b;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lcom/shabakaty/downloader/kq1;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lcom/shabakaty/downloader/qq1;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/ij;->w:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/ij;->D:Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/ij;->E:Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/ij;->I:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/shabakaty/downloader/ij;->K:I

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/ij;->P:Lcom/shabakaty/downloader/gb0;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ij;->Q:Z

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/ij;->R:Lcom/shabakaty/downloader/zs5;

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ij;->S:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/shabakaty/downloader/ij;->y:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    .line 12
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Looper;

    iput-object p1, p0, Lcom/shabakaty/downloader/ij;->z:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 13
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/shabakaty/downloader/kq1;

    iput-object p3, p0, Lcom/shabakaty/downloader/ij;->A:Lcom/shabakaty/downloader/kq1;

    const-string p1, "API availability must not be null"

    .line 14
    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/shabakaty/downloader/qq1;

    iput-object p4, p0, Lcom/shabakaty/downloader/ij;->B:Lcom/shabakaty/downloader/qq1;

    .line 15
    new-instance p1, Lcom/shabakaty/downloader/ij$g;

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/ij$g;-><init>(Lcom/shabakaty/downloader/ij;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ij;->C:Landroid/os/Handler;

    .line 16
    iput p5, p0, Lcom/shabakaty/downloader/ij;->N:I

    .line 17
    iput-object p6, p0, Lcom/shabakaty/downloader/ij;->L:Lcom/shabakaty/downloader/ij$a;

    .line 18
    iput-object p7, p0, Lcom/shabakaty/downloader/ij;->M:Lcom/shabakaty/downloader/ij$b;

    .line 19
    iput-object p8, p0, Lcom/shabakaty/downloader/ij;->O:Ljava/lang/String;

    return-void
.end method

.method public static I(Lcom/shabakaty/downloader/ij;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->D:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/shabakaty/downloader/ij;->K:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    .line 3
    iput-boolean v3, p0, Lcom/shabakaty/downloader/ij;->Q:Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    .line 4
    :goto_1
    iget-object v1, p0, Lcom/shabakaty/downloader/ij;->C:Landroid/os/Handler;

    iget-object p0, p0, Lcom/shabakaty/downloader/ij;->S:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v2, 0x10

    invoke-virtual {v1, v0, p0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static J(Lcom/shabakaty/downloader/ij;IILandroid/os/IInterface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->D:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/shabakaty/downloader/ij;->K:I

    if-eq v1, p1, :cond_0

    const/4 p0, 0x0

    .line 3
    monitor-exit v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/ij;->H(ILandroid/os/IInterface;)V

    const/4 p0, 0x1

    .line 5
    monitor-exit v0

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static K(Lcom/shabakaty/downloader/ij;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ij;->Q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->l()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    :goto_0
    return v1
.end method


# virtual methods
.method public abstract A()I
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public final B()[Lcom/shabakaty/downloader/ia1;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->R:Lcom/shabakaty/downloader/zs5;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/zs5;->s:[Lcom/shabakaty/downloader/ia1;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->w:Ljava/lang/String;

    return-object v0
.end method

.method public D()Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public E()Z
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public F(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->C:Landroid/os/Handler;

    new-instance v1, Lcom/shabakaty/downloader/ij$k;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/shabakaty/downloader/ij$k;-><init>(Lcom/shabakaty/downloader/ij;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    .line 2
    invoke-virtual {v0, p1, p4, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->O:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->y:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final H(ILandroid/os/IInterface;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 1
    :goto_2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->a(Z)V

    .line 2
    iget-object v3, p0, Lcom/shabakaty/downloader/ij;->D:Ljava/lang/Object;

    monitor-enter v3

    .line 3
    :try_start_0
    iput p1, p0, Lcom/shabakaty/downloader/ij;->K:I

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/ij;->H:Landroid/os/IInterface;

    const/16 v4, 0x1081

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    const/4 v5, 0x3

    if-eq p1, v0, :cond_4

    if-eq p1, v5, :cond_4

    if-eq p1, v2, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string p1, "null reference"

    .line 5
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/downloader/ij;->t:J

    goto/16 :goto_3

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/ij;->J:Lcom/shabakaty/downloader/ij$i;

    if-eqz p1, :cond_5

    .line 8
    iget-object p2, p0, Lcom/shabakaty/downloader/ij;->x:Lcom/shabakaty/downloader/d07;

    if-eqz p2, :cond_5

    const-string v0, "GmsClient"

    .line 9
    iget-object p2, p2, Lcom/shabakaty/downloader/d07;->a:Ljava/lang/String;

    const-string v2, "com.google.android.gms"

    .line 10
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x46

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p2, p0, Lcom/shabakaty/downloader/ij;->A:Lcom/shabakaty/downloader/kq1;

    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->x:Lcom/shabakaty/downloader/d07;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/d07;->a:Ljava/lang/String;

    const-string v2, "null reference"

    .line 14
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iget-object v2, p0, Lcom/shabakaty/downloader/ij;->x:Lcom/shabakaty/downloader/d07;

    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.google.android.gms"

    .line 17
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->G()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shabakaty/downloader/ij;->x:Lcom/shabakaty/downloader/d07;

    .line 18
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v6, Lcom/shabakaty/downloader/kq1$a;

    invoke-direct {v6, v0, v2, v4, v1}, Lcom/shabakaty/downloader/kq1$a;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p2, v6, p1, v5}, Lcom/shabakaty/downloader/kq1;->c(Lcom/shabakaty/downloader/kq1$a;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/shabakaty/downloader/ij;->S:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 22
    :cond_5
    new-instance p1, Lcom/shabakaty/downloader/ij$i;

    iget-object p2, p0, Lcom/shabakaty/downloader/ij;->S:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/shabakaty/downloader/ij$i;-><init>(Lcom/shabakaty/downloader/ij;I)V

    .line 23
    iput-object p1, p0, Lcom/shabakaty/downloader/ij;->J:Lcom/shabakaty/downloader/ij$i;

    .line 24
    new-instance p2, Lcom/shabakaty/downloader/d07;

    const-string v6, "com.google.android.gms"

    .line 25
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->m()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    .line 26
    sget-object v2, Lcom/shabakaty/downloader/kq1;->a:Ljava/lang/Object;

    const/16 v9, 0x1081

    const/4 v10, 0x0

    move-object v5, p2

    move-object v7, v0

    .line 27
    invoke-direct/range {v5 .. v10}, Lcom/shabakaty/downloader/d07;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 28
    iput-object p2, p0, Lcom/shabakaty/downloader/ij;->x:Lcom/shabakaty/downloader/d07;

    .line 29
    iget-object p2, p0, Lcom/shabakaty/downloader/ij;->A:Lcom/shabakaty/downloader/kq1;

    const-string v2, "null reference"

    .line 30
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iget-object v2, p0, Lcom/shabakaty/downloader/ij;->x:Lcom/shabakaty/downloader/d07;

    .line 32
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.google.android.gms"

    .line 33
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->G()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shabakaty/downloader/ij;->x:Lcom/shabakaty/downloader/d07;

    .line 34
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v6, Lcom/shabakaty/downloader/kq1$a;

    invoke-direct {v6, v0, v2, v4, v1}, Lcom/shabakaty/downloader/kq1$a;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p2, v6, p1, v5}, Lcom/shabakaty/downloader/kq1;->b(Lcom/shabakaty/downloader/kq1$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "GmsClient"

    .line 36
    iget-object p2, p0, Lcom/shabakaty/downloader/ij;->x:Lcom/shabakaty/downloader/d07;

    .line 37
    iget-object p2, p2, Lcom/shabakaty/downloader/d07;->a:Ljava/lang/String;

    const-string v0, "com.google.android.gms"

    .line 38
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unable to connect to service: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    .line 40
    iget-object p2, p0, Lcom/shabakaty/downloader/ij;->S:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 42
    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->C:Landroid/os/Handler;

    new-instance v1, Lcom/shabakaty/downloader/ij$l;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/ij$l;-><init>(Lcom/shabakaty/downloader/ij;I)V

    const/4 p1, 0x7

    const/4 v2, -0x1

    .line 43
    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 45
    :cond_6
    iget-object p1, p0, Lcom/shabakaty/downloader/ij;->J:Lcom/shabakaty/downloader/ij$i;

    if-eqz p1, :cond_7

    .line 46
    iget-object p2, p0, Lcom/shabakaty/downloader/ij;->A:Lcom/shabakaty/downloader/kq1;

    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->x:Lcom/shabakaty/downloader/d07;

    .line 47
    iget-object v0, v0, Lcom/shabakaty/downloader/d07;->a:Ljava/lang/String;

    const-string v2, "null reference"

    .line 48
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iget-object v2, p0, Lcom/shabakaty/downloader/ij;->x:Lcom/shabakaty/downloader/d07;

    .line 50
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.google.android.gms"

    .line 51
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->G()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/shabakaty/downloader/ij;->x:Lcom/shabakaty/downloader/d07;

    .line 52
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v6, Lcom/shabakaty/downloader/kq1$a;

    invoke-direct {v6, v0, v2, v4, v1}, Lcom/shabakaty/downloader/kq1$a;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p2, v6, p1, v5}, Lcom/shabakaty/downloader/kq1;->c(Lcom/shabakaty/downloader/kq1$a;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/shabakaty/downloader/ij;->J:Lcom/shabakaty/downloader/ij$i;

    .line 56
    :cond_7
    :goto_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Q0()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->B:Lcom/shabakaty/downloader/qq1;

    iget-object v1, p0, Lcom/shabakaty/downloader/ij;->y:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->A()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/qq1;->c(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/shabakaty/downloader/ij;->H(ILandroid/os/IInterface;)V

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/ij$d;

    invoke-direct {v1, p0}, Lcom/shabakaty/downloader/ij$d;-><init>(Lcom/shabakaty/downloader/ij;)V

    const-string v3, "Connection progress callbacks cannot be null."

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/shabakaty/downloader/ij;->G:Lcom/shabakaty/downloader/ij$c;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/ij;->C:Landroid/os/Handler;

    iget-object v3, p0, Lcom/shabakaty/downloader/ij;->S:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x3

    .line 8
    invoke-virtual {v1, v4, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ij$d;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ij$d;-><init>(Lcom/shabakaty/downloader/ij;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ij;->u(Lcom/shabakaty/downloader/ij$c;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract f(Landroid/os/IBinder;)Landroid/os/IInterface;
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public g()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()[Lcom/shabakaty/downloader/ia1;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ij;->T:[Lcom/shabakaty/downloader/ia1;

    return-object v0
.end method

.method public i()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public isConnected()Z
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->D:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/shabakaty/downloader/ij;->K:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final k()Landroid/os/IInterface;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->D:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/shabakaty/downloader/ij;->K:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->e()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ij;->H:Landroid/os/IInterface;

    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    .line 5
    :cond_0
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public n()Z
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->D:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/shabakaty/downloader/ij;->K:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public o(Lcom/shabakaty/downloader/gb0;)V
    .locals 2
    .param p1    # Lcom/shabakaty/downloader/gb0;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p1, Lcom/shabakaty/downloader/gb0;->s:I

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/ij;->u:I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/ij;->v:J

    return-void
.end method

.method public p()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->S:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->I:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ij;->I:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    .line 4
    iget-object v4, p0, Lcom/shabakaty/downloader/ij;->I:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ij$h;

    .line 5
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    iput-object v3, v4, Lcom/shabakaty/downloader/ij$h;->a:Ljava/lang/Object;

    .line 7
    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ij;->I:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/ij;->E:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :try_start_3
    iput-object v3, p0, Lcom/shabakaty/downloader/ij;->F:Lcom/shabakaty/downloader/cx1;

    .line 12
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0, v3}, Lcom/shabakaty/downloader/ij;->H(ILandroid/os/IInterface;)V

    return-void

    :catchall_1
    move-exception v0

    .line 14
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 15
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public q()Z
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    instance-of p0, p0, Lcom/shabakaty/downloader/xa6;

    return p0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ij;->w:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->p()V

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->x:Lcom/shabakaty/downloader/d07;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.android.gms"

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u(Lcom/shabakaty/downloader/ij$c;)V
    .locals 1
    .param p1    # Lcom/shabakaty/downloader/ij$c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const-string v0, "Connection progress callbacks cannot be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ij$c;

    iput-object p1, p0, Lcom/shabakaty/downloader/ij;->G:Lcom/shabakaty/downloader/ij$c;

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/ij;->H(ILandroid/os/IInterface;)V

    return-void
.end method

.method public w(Lcom/shabakaty/downloader/uw1;Ljava/util/Set;)V
    .locals 3
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/uw1;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->i()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/yp1;

    iget v2, p0, Lcom/shabakaty/downloader/ij;->N:I

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/yp1;-><init>(I)V

    iget-object v2, p0, Lcom/shabakaty/downloader/ij;->y:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4
    iput-object v2, v1, Lcom/shabakaty/downloader/yp1;->u:Ljava/lang/String;

    .line 5
    iput-object v0, v1, Lcom/shabakaty/downloader/yp1;->x:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lcom/shabakaty/downloader/yp1;->w:[Lcom/google/android/gms/common/api/Scope;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->E()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->g()Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_0
    iput-object p2, v1, Lcom/shabakaty/downloader/yp1;->y:Landroid/accounts/Account;

    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Lcom/shabakaty/downloader/yp1;->v:Landroid/os/IBinder;

    .line 12
    :cond_2
    sget-object p1, Lcom/shabakaty/downloader/ij;->T:[Lcom/shabakaty/downloader/ia1;

    .line 13
    iput-object p1, v1, Lcom/shabakaty/downloader/yp1;->z:[Lcom/shabakaty/downloader/ia1;

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->h()[Lcom/shabakaty/downloader/ia1;

    move-result-object p1

    .line 15
    iput-object p1, v1, Lcom/shabakaty/downloader/yp1;->A:[Lcom/shabakaty/downloader/ia1;

    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ij;->E:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    iget-object p2, p0, Lcom/shabakaty/downloader/ij;->F:Lcom/shabakaty/downloader/cx1;

    if-eqz p2, :cond_3

    .line 18
    new-instance v0, Lcom/shabakaty/downloader/ij$j;

    iget-object v2, p0, Lcom/shabakaty/downloader/ij;->S:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/shabakaty/downloader/ij$j;-><init>(Lcom/shabakaty/downloader/ij;I)V

    .line 20
    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/cx1;->e0(Lcom/shabakaty/downloader/ax1;Lcom/shabakaty/downloader/yp1;)V

    goto :goto_1

    :cond_3
    const-string p2, "GmsClient"

    const-string v0, "mServiceBroker is null, client disconnected"

    .line 21
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    .line 23
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x8

    .line 24
    iget-object p2, p0, Lcom/shabakaty/downloader/ij;->S:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/shabakaty/downloader/ij;->F(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :catch_2
    move-exception p1

    .line 27
    throw p1

    :catch_3
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    .line 28
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x3

    .line 29
    iget-object p2, p0, Lcom/shabakaty/downloader/ij;->C:Landroid/os/Handler;

    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->S:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x6

    .line 31
    invoke-virtual {p2, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public x(Lcom/shabakaty/downloader/ij$e;)V
    .locals 2
    .param p1    # Lcom/shabakaty/downloader/ij$e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/android/gms/common/api/internal/o;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/c$a;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 4
    new-instance v1, Lcom/google/android/gms/common/api/internal/q;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/internal/q;-><init>(Lcom/google/android/gms/common/api/internal/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public y(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/shabakaty/downloader/ij;->D:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_0
    iget p4, p0, Lcom/shabakaty/downloader/ij;->K:I

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ij;->H:Landroid/os/IInterface;

    .line 4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ij;->E:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_1
    iget-object p2, p0, Lcom/shabakaty/downloader/ij;->F:Lcom/shabakaty/downloader/cx1;

    .line 7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "mConnectState="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p4, v3, :cond_4

    if-eq p4, v2, :cond_3

    if-eq p4, v1, :cond_2

    const/4 v4, 0x4

    if-eq p4, v4, :cond_1

    const/4 v4, 0x5

    if-eq p4, v4, :cond_0

    const-string p4, "UNKNOWN"

    .line 9
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p4, "DISCONNECTING"

    .line 10
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p4, "CONNECTED"

    .line 11
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p4, "LOCAL_CONNECTING"

    .line 12
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p4, "REMOTE_CONNECTING"

    .line 13
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p4, "DISCONNECTED"

    .line 14
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string p4, " mService="

    .line 15
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v0, :cond_5

    const-string p4, "null"

    .line 16
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ij;->l()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v4, "@"

    .line 18
    invoke-virtual {p4, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    .line 19
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_1
    const-string p4, " mServiceBroker="

    .line 20
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez p2, :cond_6

    const-string p2, "null"

    .line 21
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p4, "IGmsServiceBroker@"

    .line 22
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    .line 23
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    :goto_2
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p4, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, p4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 25
    iget-wide v4, p0, Lcom/shabakaty/downloader/ij;->t:J

    const-wide/16 v6, 0x0

    cmp-long p4, v4, v6

    if-lez p4, :cond_7

    .line 26
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v0, "lastConnectedTime="

    .line 27
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    iget-wide v4, p0, Lcom/shabakaty/downloader/ij;->t:J

    new-instance v0, Ljava/util/Date;

    iget-wide v8, p0, Lcom/shabakaty/downloader/ij;->t:J

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 28
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x15

    invoke-static {v0, v8}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    :cond_7
    iget-wide v4, p0, Lcom/shabakaty/downloader/ij;->s:J

    cmp-long p4, v4, v6

    if-lez p4, :cond_b

    .line 30
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v0, "lastSuspendedCause="

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 31
    iget p4, p0, Lcom/shabakaty/downloader/ij;->r:I

    if-eq p4, v3, :cond_a

    if-eq p4, v2, :cond_9

    if-eq p4, v1, :cond_8

    .line 32
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    :cond_8
    const-string p4, "CAUSE_DEAD_OBJECT_EXCEPTION"

    .line 33
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    :cond_9
    const-string p4, "CAUSE_NETWORK_LOST"

    .line 34
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    :cond_a
    const-string p4, "CAUSE_SERVICE_DISCONNECTED"

    .line 35
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_3
    const-string p4, " lastSuspendedTime="

    .line 36
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    iget-wide v0, p0, Lcom/shabakaty/downloader/ij;->s:J

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/shabakaty/downloader/ij;->s:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 37
    invoke-virtual {p2, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    :cond_b
    iget-wide v0, p0, Lcom/shabakaty/downloader/ij;->v:J

    cmp-long p4, v0, v6

    if-lez p4, :cond_c

    .line 39
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p4, "lastFailedStatus="

    .line 40
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget p4, p0, Lcom/shabakaty/downloader/ij;->u:I

    .line 41
    invoke-static {p4}, Lcom/shabakaty/downloader/m70;->a(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string p1, " lastFailedTime="

    .line 42
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget-wide p3, p0, Lcom/shabakaty/downloader/ij;->v:J

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/shabakaty/downloader/ij;->v:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 43
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x15

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    return-void

    :catchall_0
    move-exception p1

    .line 44
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 45
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public z()Z
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
