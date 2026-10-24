.class public Lcom/shabakaty/downloader/a63;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/shabakaty/downloader/mq$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/a63$a;,
        Lcom/shabakaty/downloader/a63$b;
    }
.end annotation


# static fields
.field public static final V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/mj3;",
            ">;"
        }
    .end annotation
.end field

.field public static final W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ib0;",
            ">;"
        }
    .end annotation
.end field

.field public static final X:Lcom/shabakaty/downloader/a63$b;


# instance fields
.field public final A:Lcom/shabakaty/downloader/ge0;

.field public final B:Lcom/shabakaty/downloader/op;

.field public final C:Lcom/shabakaty/downloader/vu0;

.field public final D:Ljava/net/Proxy;

.field public final E:Ljava/net/ProxySelector;

.field public final F:Lcom/shabakaty/downloader/if;

.field public final G:Ljavax/net/SocketFactory;

.field public final H:Ljavax/net/ssl/SSLSocketFactory;

.field public final I:Ljavax/net/ssl/X509TrustManager;

.field public final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ib0;",
            ">;"
        }
    .end annotation
.end field

.field public final K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/mj3;",
            ">;"
        }
    .end annotation
.end field

.field public final L:Ljavax/net/ssl/HostnameVerifier;

.field public final M:Lcom/shabakaty/downloader/ey;

.field public final N:Lcom/shabakaty/downloader/dy;

.field public final O:I

.field public final P:I

.field public final Q:I

.field public final R:I

.field public final S:I

.field public final T:J

.field public final U:Lcom/shabakaty/downloader/ku3;

.field public final r:Lcom/shabakaty/downloader/fu0;

.field public final s:Lcom/shabakaty/downloader/yo;

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/w22;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/w22;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lcom/shabakaty/downloader/o51$b;

.field public final w:Z

.field public final x:Lcom/shabakaty/downloader/if;

.field public final y:Z

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/shabakaty/downloader/a63$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/a63$b;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/a63;->X:Lcom/shabakaty/downloader/a63$b;

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/shabakaty/downloader/mj3;

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/mj3;->v:Lcom/shabakaty/downloader/mj3;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/shabakaty/downloader/mj3;->t:Lcom/shabakaty/downloader/mj3;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/shabakaty/downloader/ry4;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/downloader/a63;->V:Ljava/util/List;

    new-array v0, v0, [Lcom/shabakaty/downloader/ib0;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/ib0;->e:Lcom/shabakaty/downloader/ib0;

    aput-object v1, v0, v3

    sget-object v1, Lcom/shabakaty/downloader/ib0;->f:Lcom/shabakaty/downloader/ib0;

    aput-object v1, v0, v4

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/a63;->W:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 103
    new-instance v0, Lcom/shabakaty/downloader/a63$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a63$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/a63;-><init>(Lcom/shabakaty/downloader/a63$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/a63$a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->a:Lcom/shabakaty/downloader/fu0;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->r:Lcom/shabakaty/downloader/fu0;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->b:Lcom/shabakaty/downloader/yo;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->s:Lcom/shabakaty/downloader/yo;

    .line 6
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->c:Ljava/util/List;

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->t:Ljava/util/List;

    .line 8
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->d:Ljava/util/List;

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/ry4;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->u:Ljava/util/List;

    .line 10
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->e:Lcom/shabakaty/downloader/o51$b;

    .line 11
    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->v:Lcom/shabakaty/downloader/o51$b;

    .line 12
    iget-boolean v0, p1, Lcom/shabakaty/downloader/a63$a;->f:Z

    .line 13
    iput-boolean v0, p0, Lcom/shabakaty/downloader/a63;->w:Z

    .line 14
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->g:Lcom/shabakaty/downloader/if;

    .line 15
    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->x:Lcom/shabakaty/downloader/if;

    .line 16
    iget-boolean v0, p1, Lcom/shabakaty/downloader/a63$a;->h:Z

    .line 17
    iput-boolean v0, p0, Lcom/shabakaty/downloader/a63;->y:Z

    .line 18
    iget-boolean v0, p1, Lcom/shabakaty/downloader/a63$a;->i:Z

    .line 19
    iput-boolean v0, p0, Lcom/shabakaty/downloader/a63;->z:Z

    .line 20
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->j:Lcom/shabakaty/downloader/ge0;

    .line 21
    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->A:Lcom/shabakaty/downloader/ge0;

    .line 22
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->k:Lcom/shabakaty/downloader/op;

    .line 23
    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->B:Lcom/shabakaty/downloader/op;

    .line 24
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->l:Lcom/shabakaty/downloader/vu0;

    .line 25
    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->C:Lcom/shabakaty/downloader/vu0;

    .line 26
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->m:Ljava/net/Proxy;

    .line 27
    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->D:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/shabakaty/downloader/p13;->a:Lcom/shabakaty/downloader/p13;

    goto :goto_1

    .line 29
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->n:Ljava/net/ProxySelector;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/p13;->a:Lcom/shabakaty/downloader/p13;

    .line 31
    :goto_1
    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->E:Ljava/net/ProxySelector;

    .line 32
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->o:Lcom/shabakaty/downloader/if;

    .line 33
    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->F:Lcom/shabakaty/downloader/if;

    .line 34
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->p:Ljavax/net/SocketFactory;

    .line 35
    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->G:Ljavax/net/SocketFactory;

    .line 36
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->s:Ljava/util/List;

    .line 37
    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->J:Ljava/util/List;

    .line 38
    iget-object v1, p1, Lcom/shabakaty/downloader/a63$a;->t:Ljava/util/List;

    .line 39
    iput-object v1, p0, Lcom/shabakaty/downloader/a63;->K:Ljava/util/List;

    .line 40
    iget-object v1, p1, Lcom/shabakaty/downloader/a63$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 41
    iput-object v1, p0, Lcom/shabakaty/downloader/a63;->L:Ljavax/net/ssl/HostnameVerifier;

    .line 42
    iget v1, p1, Lcom/shabakaty/downloader/a63$a;->x:I

    .line 43
    iput v1, p0, Lcom/shabakaty/downloader/a63;->O:I

    .line 44
    iget v1, p1, Lcom/shabakaty/downloader/a63$a;->y:I

    .line 45
    iput v1, p0, Lcom/shabakaty/downloader/a63;->P:I

    .line 46
    iget v1, p1, Lcom/shabakaty/downloader/a63$a;->z:I

    .line 47
    iput v1, p0, Lcom/shabakaty/downloader/a63;->Q:I

    .line 48
    iget v1, p1, Lcom/shabakaty/downloader/a63$a;->A:I

    .line 49
    iput v1, p0, Lcom/shabakaty/downloader/a63;->R:I

    .line 50
    iget v1, p1, Lcom/shabakaty/downloader/a63$a;->B:I

    .line 51
    iput v1, p0, Lcom/shabakaty/downloader/a63;->S:I

    .line 52
    iget-wide v1, p1, Lcom/shabakaty/downloader/a63$a;->C:J

    .line 53
    iput-wide v1, p0, Lcom/shabakaty/downloader/a63;->T:J

    .line 54
    iget-object v1, p1, Lcom/shabakaty/downloader/a63$a;->D:Lcom/shabakaty/downloader/ku3;

    if-eqz v1, :cond_3

    goto :goto_2

    .line 55
    :cond_3
    new-instance v1, Lcom/shabakaty/downloader/ku3;

    invoke-direct {v1}, Lcom/shabakaty/downloader/ku3;-><init>()V

    :goto_2
    iput-object v1, p0, Lcom/shabakaty/downloader/a63;->U:Lcom/shabakaty/downloader/ku3;

    .line 56
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 57
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ib0;

    .line 58
    iget-boolean v1, v1, Lcom/shabakaty/downloader/ib0;->a:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    :goto_4
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 59
    iput-object v1, p0, Lcom/shabakaty/downloader/a63;->H:Ljavax/net/ssl/SSLSocketFactory;

    .line 60
    iput-object v1, p0, Lcom/shabakaty/downloader/a63;->N:Lcom/shabakaty/downloader/dy;

    .line 61
    iput-object v1, p0, Lcom/shabakaty/downloader/a63;->I:Ljavax/net/ssl/X509TrustManager;

    .line 62
    sget-object p1, Lcom/shabakaty/downloader/ey;->c:Lcom/shabakaty/downloader/ey;

    iput-object p1, p0, Lcom/shabakaty/downloader/a63;->M:Lcom/shabakaty/downloader/ey;

    goto :goto_5

    .line 63
    :cond_7
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_8

    .line 64
    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->H:Ljavax/net/ssl/SSLSocketFactory;

    .line 65
    iget-object v0, p1, Lcom/shabakaty/downloader/a63$a;->w:Lcom/shabakaty/downloader/dy;

    .line 66
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->N:Lcom/shabakaty/downloader/dy;

    .line 67
    iget-object v3, p1, Lcom/shabakaty/downloader/a63$a;->r:Ljavax/net/ssl/X509TrustManager;

    .line 68
    invoke-static {v3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/shabakaty/downloader/a63;->I:Ljavax/net/ssl/X509TrustManager;

    .line 69
    iget-object p1, p1, Lcom/shabakaty/downloader/a63$a;->v:Lcom/shabakaty/downloader/ey;

    .line 70
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ey;->b(Lcom/shabakaty/downloader/dy;)Lcom/shabakaty/downloader/ey;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/a63;->M:Lcom/shabakaty/downloader/ey;

    goto :goto_5

    .line 71
    :cond_8
    sget-object v0, Lcom/shabakaty/downloader/lc3;->c:Lcom/shabakaty/downloader/lc3$a;

    .line 72
    sget-object v0, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    .line 73
    invoke-virtual {v0}, Lcom/shabakaty/downloader/lc3;->n()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->I:Ljavax/net/ssl/X509TrustManager;

    .line 74
    sget-object v3, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    .line 75
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/lc3;->m(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/a63;->H:Ljavax/net/ssl/SSLSocketFactory;

    .line 76
    sget-object v3, Lcom/shabakaty/downloader/lc3;->a:Lcom/shabakaty/downloader/lc3;

    .line 77
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/lc3;->b(Ljavax/net/ssl/X509TrustManager;)Lcom/shabakaty/downloader/dy;

    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/shabakaty/downloader/a63;->N:Lcom/shabakaty/downloader/dy;

    .line 79
    iget-object p1, p1, Lcom/shabakaty/downloader/a63$a;->v:Lcom/shabakaty/downloader/ey;

    .line 80
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ey;->b(Lcom/shabakaty/downloader/dy;)Lcom/shabakaty/downloader/ey;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/a63;->M:Lcom/shabakaty/downloader/ey;

    .line 81
    :goto_5
    iget-object p1, p0, Lcom/shabakaty/downloader/a63;->t:Ljava/util/List;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_18

    .line 82
    iget-object p1, p0, Lcom/shabakaty/downloader/a63;->u:Ljava/util/List;

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_17

    .line 83
    iget-object p1, p0, Lcom/shabakaty/downloader/a63;->J:Ljava/util/List;

    .line 84
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    .line 85
    :cond_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ib0;

    .line 86
    iget-boolean v0, v0, Lcom/shabakaty/downloader/ib0;->a:Z

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 p1, 0x1

    :goto_7
    if-eqz p1, :cond_13

    .line 87
    iget-object p1, p0, Lcom/shabakaty/downloader/a63;->H:Ljavax/net/ssl/SSLSocketFactory;

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_8

    :cond_c
    const/4 p1, 0x0

    :goto_8
    const-string v0, "Check failed."

    if-eqz p1, :cond_12

    .line 88
    iget-object p1, p0, Lcom/shabakaty/downloader/a63;->N:Lcom/shabakaty/downloader/dy;

    if-nez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_9

    :cond_d
    const/4 p1, 0x0

    :goto_9
    if-eqz p1, :cond_11

    .line 89
    iget-object p1, p0, Lcom/shabakaty/downloader/a63;->I:Ljavax/net/ssl/X509TrustManager;

    if-nez p1, :cond_e

    const/4 v2, 0x1

    :cond_e
    if-eqz v2, :cond_10

    .line 90
    iget-object p1, p0, Lcom/shabakaty/downloader/a63;->M:Lcom/shabakaty/downloader/ey;

    sget-object v1, Lcom/shabakaty/downloader/ey;->c:Lcom/shabakaty/downloader/ey;

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_a

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_13
    iget-object p1, p0, Lcom/shabakaty/downloader/a63;->H:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_16

    .line 95
    iget-object p1, p0, Lcom/shabakaty/downloader/a63;->N:Lcom/shabakaty/downloader/dy;

    if-eqz p1, :cond_15

    .line 96
    iget-object p1, p0, Lcom/shabakaty/downloader/a63;->I:Ljavax/net/ssl/X509TrustManager;

    if-eqz p1, :cond_14

    :goto_a
    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "x509TrustManager == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "certificateChainCleaner == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sslSocketFactory == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    const-string p1, "Null network interceptor: "

    .line 99
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/a63;->u:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const-string p1, "Null interceptor: "

    .line 101
    invoke-static {p1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/a63;->t:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/vr3;)Lcom/shabakaty/downloader/mq;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pn3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/pn3;-><init>(Lcom/shabakaty/downloader/a63;Lcom/shabakaty/downloader/vr3;Z)V

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/a63$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/a63$a;

    const-string v1, "okHttpClient"

    .line 2
    invoke-static {p0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {v0}, Lcom/shabakaty/downloader/a63$a;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->r:Lcom/shabakaty/downloader/fu0;

    .line 5
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->a:Lcom/shabakaty/downloader/fu0;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->s:Lcom/shabakaty/downloader/yo;

    .line 7
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->b:Lcom/shabakaty/downloader/yo;

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/a63$a;->c:Ljava/util/List;

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/a63;->t:Ljava/util/List;

    .line 10
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 11
    iget-object v1, v0, Lcom/shabakaty/downloader/a63$a;->d:Ljava/util/List;

    .line 12
    iget-object v2, p0, Lcom/shabakaty/downloader/a63;->u:Ljava/util/List;

    .line 13
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/k50;->R(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 14
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->v:Lcom/shabakaty/downloader/o51$b;

    .line 15
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->e:Lcom/shabakaty/downloader/o51$b;

    .line 16
    iget-boolean v1, p0, Lcom/shabakaty/downloader/a63;->w:Z

    .line 17
    iput-boolean v1, v0, Lcom/shabakaty/downloader/a63$a;->f:Z

    .line 18
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->x:Lcom/shabakaty/downloader/if;

    .line 19
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->g:Lcom/shabakaty/downloader/if;

    .line 20
    iget-boolean v1, p0, Lcom/shabakaty/downloader/a63;->y:Z

    .line 21
    iput-boolean v1, v0, Lcom/shabakaty/downloader/a63$a;->h:Z

    .line 22
    iget-boolean v1, p0, Lcom/shabakaty/downloader/a63;->z:Z

    .line 23
    iput-boolean v1, v0, Lcom/shabakaty/downloader/a63$a;->i:Z

    .line 24
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->A:Lcom/shabakaty/downloader/ge0;

    .line 25
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->j:Lcom/shabakaty/downloader/ge0;

    .line 26
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->B:Lcom/shabakaty/downloader/op;

    .line 27
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->k:Lcom/shabakaty/downloader/op;

    .line 28
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->C:Lcom/shabakaty/downloader/vu0;

    .line 29
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->l:Lcom/shabakaty/downloader/vu0;

    .line 30
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->D:Ljava/net/Proxy;

    .line 31
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->m:Ljava/net/Proxy;

    .line 32
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->E:Ljava/net/ProxySelector;

    .line 33
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->n:Ljava/net/ProxySelector;

    .line 34
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->F:Lcom/shabakaty/downloader/if;

    .line 35
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->o:Lcom/shabakaty/downloader/if;

    .line 36
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->G:Ljavax/net/SocketFactory;

    .line 37
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->p:Ljavax/net/SocketFactory;

    .line 38
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->H:Ljavax/net/ssl/SSLSocketFactory;

    .line 39
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 40
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->I:Ljavax/net/ssl/X509TrustManager;

    .line 41
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->r:Ljavax/net/ssl/X509TrustManager;

    .line 42
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->J:Ljava/util/List;

    .line 43
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->s:Ljava/util/List;

    .line 44
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->K:Ljava/util/List;

    .line 45
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->t:Ljava/util/List;

    .line 46
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->L:Ljavax/net/ssl/HostnameVerifier;

    .line 47
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 48
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->M:Lcom/shabakaty/downloader/ey;

    .line 49
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->v:Lcom/shabakaty/downloader/ey;

    .line 50
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->N:Lcom/shabakaty/downloader/dy;

    .line 51
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->w:Lcom/shabakaty/downloader/dy;

    .line 52
    iget v1, p0, Lcom/shabakaty/downloader/a63;->O:I

    .line 53
    iput v1, v0, Lcom/shabakaty/downloader/a63$a;->x:I

    .line 54
    iget v1, p0, Lcom/shabakaty/downloader/a63;->P:I

    .line 55
    iput v1, v0, Lcom/shabakaty/downloader/a63$a;->y:I

    .line 56
    iget v1, p0, Lcom/shabakaty/downloader/a63;->Q:I

    .line 57
    iput v1, v0, Lcom/shabakaty/downloader/a63$a;->z:I

    .line 58
    iget v1, p0, Lcom/shabakaty/downloader/a63;->R:I

    .line 59
    iput v1, v0, Lcom/shabakaty/downloader/a63$a;->A:I

    .line 60
    iget v1, p0, Lcom/shabakaty/downloader/a63;->S:I

    .line 61
    iput v1, v0, Lcom/shabakaty/downloader/a63$a;->B:I

    .line 62
    iget-wide v1, p0, Lcom/shabakaty/downloader/a63;->T:J

    .line 63
    iput-wide v1, v0, Lcom/shabakaty/downloader/a63$a;->C:J

    .line 64
    iget-object v1, p0, Lcom/shabakaty/downloader/a63;->U:Lcom/shabakaty/downloader/ku3;

    .line 65
    iput-object v1, v0, Lcom/shabakaty/downloader/a63$a;->D:Lcom/shabakaty/downloader/ku3;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
