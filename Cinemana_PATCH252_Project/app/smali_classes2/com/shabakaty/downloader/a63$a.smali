.class public final Lcom/shabakaty/downloader/a63$a;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/a63;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:J

.field public D:Lcom/shabakaty/downloader/ku3;

.field public a:Lcom/shabakaty/downloader/fu0;

.field public b:Lcom/shabakaty/downloader/yo;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/w22;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/w22;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/shabakaty/downloader/o51$b;

.field public f:Z

.field public g:Lcom/shabakaty/downloader/if;

.field public h:Z

.field public i:Z

.field public j:Lcom/shabakaty/downloader/ge0;

.field public k:Lcom/shabakaty/downloader/op;

.field public l:Lcom/shabakaty/downloader/vu0;

.field public m:Ljava/net/Proxy;

.field public n:Ljava/net/ProxySelector;

.field public o:Lcom/shabakaty/downloader/if;

.field public p:Ljavax/net/SocketFactory;

.field public q:Ljavax/net/ssl/SSLSocketFactory;

.field public r:Ljavax/net/ssl/X509TrustManager;

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ib0;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/mj3;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljavax/net/ssl/HostnameVerifier;

.field public v:Lcom/shabakaty/downloader/ey;

.field public w:Lcom/shabakaty/downloader/dy;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/fu0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/fu0;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/a63$a;->a:Lcom/shabakaty/downloader/fu0;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/yo;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/yo;-><init>(ILcom/shabakaty/downloader/io2;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/a63$a;->b:Lcom/shabakaty/downloader/yo;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/a63$a;->c:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/a63$a;->d:Ljava/util/List;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/o51;->a:Lcom/shabakaty/downloader/o51;

    sget-object v1, Lcom/shabakaty/downloader/ry4;->a:[B

    const-string v1, "$this$asFactory"

    .line 7
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/oy4;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/oy4;-><init>(Lcom/shabakaty/downloader/o51;)V

    .line 9
    iput-object v1, p0, Lcom/shabakaty/downloader/a63$a;->e:Lcom/shabakaty/downloader/o51$b;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/shabakaty/downloader/a63$a;->f:Z

    .line 11
    sget-object v1, Lcom/shabakaty/downloader/if;->a:Lcom/shabakaty/downloader/if;

    iput-object v1, p0, Lcom/shabakaty/downloader/a63$a;->g:Lcom/shabakaty/downloader/if;

    .line 12
    iput-boolean v0, p0, Lcom/shabakaty/downloader/a63$a;->h:Z

    .line 13
    iput-boolean v0, p0, Lcom/shabakaty/downloader/a63$a;->i:Z

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/ge0;->a:Lcom/shabakaty/downloader/ge0;

    iput-object v0, p0, Lcom/shabakaty/downloader/a63$a;->j:Lcom/shabakaty/downloader/ge0;

    .line 15
    sget-object v0, Lcom/shabakaty/downloader/vu0;->a:Lcom/shabakaty/downloader/vu0;

    iput-object v0, p0, Lcom/shabakaty/downloader/a63$a;->l:Lcom/shabakaty/downloader/vu0;

    .line 16
    iput-object v1, p0, Lcom/shabakaty/downloader/a63$a;->o:Lcom/shabakaty/downloader/if;

    .line 17
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "SocketFactory.getDefault()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/a63$a;->p:Ljavax/net/SocketFactory;

    .line 18
    sget-object v0, Lcom/shabakaty/downloader/a63;->X:Lcom/shabakaty/downloader/a63$b;

    .line 19
    sget-object v0, Lcom/shabakaty/downloader/a63;->W:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/shabakaty/downloader/a63$a;->s:Ljava/util/List;

    .line 21
    sget-object v0, Lcom/shabakaty/downloader/a63;->V:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/shabakaty/downloader/a63$a;->t:Ljava/util/List;

    .line 23
    sget-object v0, Lcom/shabakaty/downloader/x53;->a:Lcom/shabakaty/downloader/x53;

    iput-object v0, p0, Lcom/shabakaty/downloader/a63$a;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 24
    sget-object v0, Lcom/shabakaty/downloader/ey;->c:Lcom/shabakaty/downloader/ey;

    iput-object v0, p0, Lcom/shabakaty/downloader/a63$a;->v:Lcom/shabakaty/downloader/ey;

    const/16 v0, 0x2710

    .line 25
    iput v0, p0, Lcom/shabakaty/downloader/a63$a;->y:I

    .line 26
    iput v0, p0, Lcom/shabakaty/downloader/a63$a;->z:I

    .line 27
    iput v0, p0, Lcom/shabakaty/downloader/a63$a;->A:I

    const-wide/16 v0, 0x400

    .line 28
    iput-wide v0, p0, Lcom/shabakaty/downloader/a63$a;->C:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/w22;)Lcom/shabakaty/downloader/a63$a;
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a63$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a63$a;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lcom/shabakaty/downloader/ry4;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/a63$a;->y:I

    return-object p0
.end method

.method public final c(Ljava/util/List;)Lcom/shabakaty/downloader/a63$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ib0;",
            ">;)",
            "Lcom/shabakaty/downloader/a63$a;"
        }
    .end annotation

    const-string v0, "connectionSpecs"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a63$a;->s:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/a63$a;->D:Lcom/shabakaty/downloader/ku3;

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/ry4;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/a63$a;->s:Ljava/util/List;

    return-object p0
.end method

.method public final d(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a63$a;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lcom/shabakaty/downloader/ry4;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/a63$a;->z:I

    return-object p0
.end method

.method public final e(JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/a63$a;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    .line 1
    invoke-static {v0, p1, p2, p3}, Lcom/shabakaty/downloader/ry4;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/shabakaty/downloader/a63$a;->A:I

    return-object p0
.end method
