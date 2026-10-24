.class public final Lcom/shabakaty/downloader/xi3;
.super Lcom/shabakaty/downloader/pp1;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/xi3$b;
    }
.end annotation


# static fields
.field public static final v:Lcom/shabakaty/downloader/xi3;

.field public static w:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/xi3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Lcom/shabakaty/downloader/ep;

.field public s:Lcom/shabakaty/downloader/ug2;

.field public t:B

.field public u:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xi3$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xi3$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/xi3;->w:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/xi3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xi3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/xi3;->v:Lcom/shabakaty/downloader/xi3;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/sg2;->s:Lcom/shabakaty/downloader/ug2;

    iput-object v1, v0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/xi3;->t:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/xi3;->u:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/xi3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1;-><init>(Lcom/shabakaty/downloader/pp1$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/xi3;->t:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/xi3;->u:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/xi3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 5

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 p2, -0x1

    .line 11
    iput-byte p2, p0, Lcom/shabakaty/downloader/xi3;->t:B

    .line 12
    iput p2, p0, Lcom/shabakaty/downloader/xi3;->u:I

    .line 13
    sget-object p2, Lcom/shabakaty/downloader/sg2;->s:Lcom/shabakaty/downloader/ug2;

    iput-object p2, p0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    .line 14
    invoke-static {}, Lcom/shabakaty/downloader/ep;->u()Lcom/shabakaty/downloader/ep$b;

    move-result-object p2

    const/4 p3, 0x1

    .line 15
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/w40;->k(Ljava/io/OutputStream;I)Lcom/shabakaty/downloader/w40;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 17
    invoke-virtual {p1, v3, v0}, Lcom/shabakaty/downloader/u40;->r(ILcom/shabakaty/downloader/w40;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->f()Lcom/shabakaty/downloader/ep;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-eq v4, p3, :cond_2

    .line 19
    new-instance v4, Lcom/shabakaty/downloader/sg2;

    invoke-direct {v4}, Lcom/shabakaty/downloader/sg2;-><init>()V

    iput-object v4, p0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    or-int/lit8 v2, v2, 0x1

    .line 20
    :cond_2
    iget-object v4, p0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    invoke-interface {v4, v3}, Lcom/shabakaty/downloader/ug2;->v0(Lcom/shabakaty/downloader/ep;)V
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    :try_start_1
    new-instance v1, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p0, v1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 23
    throw v1

    :catch_1
    move-exception p1

    .line 24
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 25
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 v1, v2, 0x1

    if-ne v1, p3, :cond_4

    .line 26
    iget-object p3, p0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    invoke-interface {p3}, Lcom/shabakaty/downloader/ug2;->w()Lcom/shabakaty/downloader/ug2;

    move-result-object p3

    iput-object p3, p0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    .line 27
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 28
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/xi3;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/xi3;->r:Lcom/shabakaty/downloader/ep;

    .line 29
    throw p1

    :cond_5
    and-int/lit8 p1, v2, 0x1

    if-ne p1, p3, :cond_6

    .line 30
    iget-object p1, p0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/ug2;->w()Lcom/shabakaty/downloader/ug2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    .line 31
    :cond_6
    :try_start_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 32
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/xi3;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xi3;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/xi3;->t:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/shabakaty/downloader/xi3;->t:B

    return v1
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xi3$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/xi3$b;->n(Lcom/shabakaty/downloader/xi3;)Lcom/shabakaty/downloader/xi3$b;

    return-object v0
.end method

.method public e()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/xi3;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    invoke-interface {v3, v1}, Lcom/shabakaty/downloader/ug2;->Y0(I)Lcom/shabakaty/downloader/ep;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/downloader/w40;->a(Lcom/shabakaty/downloader/ep;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/xi3;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/xi3;->u:I

    return v0
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xi3;->e()I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/xi3;->s:Lcom/shabakaty/downloader/ug2;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/ug2;->Y0(I)Lcom/shabakaty/downloader/ep;

    move-result-object v1

    const/16 v2, 0xa

    .line 4
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 5
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/w40;->m(Lcom/shabakaty/downloader/ep;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xi3;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xi3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/xi3$b;-><init>()V

    return-object v0
.end method
