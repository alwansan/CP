.class public final Lcom/shabakaty/downloader/p4;
.super Ljava/lang/Object;
.source "Address.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/qw1;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/mj3;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ib0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/vu0;

.field public final e:Ljavax/net/SocketFactory;

.field public final f:Ljavax/net/ssl/SSLSocketFactory;

.field public final g:Ljavax/net/ssl/HostnameVerifier;

.field public final h:Lcom/shabakaty/downloader/ey;

.field public final i:Lcom/shabakaty/downloader/if;

.field public final j:Ljava/net/Proxy;

.field public final k:Ljava/net/ProxySelector;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/shabakaty/downloader/vu0;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/shabakaty/downloader/ey;Lcom/shabakaty/downloader/if;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/shabakaty/downloader/vu0;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/shabakaty/downloader/ey;",
            "Lcom/shabakaty/downloader/if;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/mj3;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ib0;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p12

    const-string v8, "uriHost"

    invoke-static {p1, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "dns"

    invoke-static {p3, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "socketFactory"

    invoke-static {v4, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "proxyAuthenticator"

    invoke-static {v6, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "protocols"

    move-object/from16 v9, p10

    invoke-static {v9, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "connectionSpecs"

    move-object/from16 v10, p11

    invoke-static {v10, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "proxySelector"

    invoke-static {v7, v8}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/shabakaty/downloader/p4;->d:Lcom/shabakaty/downloader/vu0;

    iput-object v4, v0, Lcom/shabakaty/downloader/p4;->e:Ljavax/net/SocketFactory;

    iput-object v5, v0, Lcom/shabakaty/downloader/p4;->f:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/shabakaty/downloader/p4;->g:Ljavax/net/ssl/HostnameVerifier;

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/shabakaty/downloader/p4;->h:Lcom/shabakaty/downloader/ey;

    iput-object v6, v0, Lcom/shabakaty/downloader/p4;->i:Lcom/shabakaty/downloader/if;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/shabakaty/downloader/p4;->j:Ljava/net/Proxy;

    iput-object v7, v0, Lcom/shabakaty/downloader/p4;->k:Ljava/net/ProxySelector;

    .line 2
    new-instance v3, Lcom/shabakaty/downloader/qw1$a;

    invoke-direct {v3}, Lcom/shabakaty/downloader/qw1$a;-><init>()V

    const-string v4, "https"

    const-string v6, "http"

    if-eqz v5, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    const-string v7, "scheme"

    .line 3
    invoke-static {v5, v7}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 4
    invoke-static {v5, v6, v7}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    iput-object v6, v3, Lcom/shabakaty/downloader/qw1$a;->a:Ljava/lang/String;

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v5, v4, v7}, Lcom/shabakaty/downloader/ne4;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    iput-object v4, v3, Lcom/shabakaty/downloader/qw1$a;->a:Ljava/lang/String;

    :goto_1
    const-string v4, "host"

    .line 6
    invoke-static {p1, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v4, Lcom/shabakaty/downloader/qw1;->l:Lcom/shabakaty/downloader/qw1$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x7

    move-object p3, v4

    move-object/from16 p4, p1

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v8

    move/from16 p8, v11

    invoke-static/range {p3 .. p8}, Lcom/shabakaty/downloader/qw1$b;->e(Lcom/shabakaty/downloader/qw1$b;Ljava/lang/String;IIZI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/downloader/md0;->R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 8
    iput-object v4, v3, Lcom/shabakaty/downloader/qw1$a;->d:Ljava/lang/String;

    if-le v7, v2, :cond_2

    goto :goto_2

    :cond_2
    const v1, 0xffff

    if-lt v1, v2, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_4

    .line 9
    iput v2, v3, Lcom/shabakaty/downloader/qw1$a;->e:I

    .line 10
    invoke-virtual {v3}, Lcom/shabakaty/downloader/qw1$a;->a()Lcom/shabakaty/downloader/qw1;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 11
    invoke-static/range {p10 .. p10}, Lcom/shabakaty/downloader/ry4;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/p4;->b:Ljava/util/List;

    .line 12
    invoke-static/range {p11 .. p11}, Lcom/shabakaty/downloader/ry4;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/p4;->c:Ljava/util/List;

    return-void

    :cond_4
    const-string v1, "unexpected port: "

    .line 13
    invoke-static {v1, p2}, Lcom/shabakaty/downloader/bl3;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unexpected host: "

    .line 15
    invoke-static {v3, p1}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unexpected scheme: "

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/p4;)Z
    .locals 2

    const-string v0, "that"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->d:Lcom/shabakaty/downloader/vu0;

    iget-object v1, p1, Lcom/shabakaty/downloader/p4;->d:Lcom/shabakaty/downloader/vu0;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->i:Lcom/shabakaty/downloader/if;

    iget-object v1, p1, Lcom/shabakaty/downloader/p4;->i:Lcom/shabakaty/downloader/if;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/shabakaty/downloader/p4;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->c:Ljava/util/List;

    iget-object v1, p1, Lcom/shabakaty/downloader/p4;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->k:Ljava/net/ProxySelector;

    iget-object v1, p1, Lcom/shabakaty/downloader/p4;->k:Ljava/net/ProxySelector;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->j:Ljava/net/Proxy;

    iget-object v1, p1, Lcom/shabakaty/downloader/p4;->j:Ljava/net/Proxy;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->f:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lcom/shabakaty/downloader/p4;->f:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->g:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lcom/shabakaty/downloader/p4;->g:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->h:Lcom/shabakaty/downloader/ey;

    iget-object v1, p1, Lcom/shabakaty/downloader/p4;->h:Lcom/shabakaty/downloader/ey;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 2
    iget v0, v0, Lcom/shabakaty/downloader/qw1;->f:I

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 4
    iget p1, p1, Lcom/shabakaty/downloader/qw1;->f:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/p4;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    check-cast p1, Lcom/shabakaty/downloader/p4;

    iget-object v1, p1, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/p4;->a(Lcom/shabakaty/downloader/p4;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qw1;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/p4;->d:Lcom/shabakaty/downloader/vu0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->i:Lcom/shabakaty/downloader/if;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/p4;->b:Ljava/util/List;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/j60;->a(Ljava/util/List;II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/p4;->c:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/j60;->a(Ljava/util/List;II)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/p4;->k:Ljava/net/ProxySelector;

    invoke-virtual {v1}, Ljava/net/ProxySelector;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->j:Ljava/net/Proxy;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/p4;->f:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/p4;->g:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/p4;->h:Lcom/shabakaty/downloader/ey;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Address{"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/qw1;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/p4;->a:Lcom/shabakaty/downloader/qw1;

    .line 5
    iget v1, v1, Lcom/shabakaty/downloader/qw1;->f:I

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/p4;->j:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    const-string v1, "proxy="

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/p4;->j:Ljava/net/Proxy;

    goto :goto_0

    :cond_0
    const-string v1, "proxySelector="

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/p4;->k:Ljava/net/ProxySelector;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
