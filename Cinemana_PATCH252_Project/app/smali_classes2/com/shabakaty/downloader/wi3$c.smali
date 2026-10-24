.class public final Lcom/shabakaty/downloader/wi3$c;
.super Lcom/shabakaty/downloader/pp1;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wi3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/wi3$c$b;,
        Lcom/shabakaty/downloader/wi3$c$c;
    }
.end annotation


# static fields
.field public static final y:Lcom/shabakaty/downloader/wi3$c;

.field public static z:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/wi3$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Lcom/shabakaty/downloader/ep;

.field public s:I

.field public t:I

.field public u:I

.field public v:Lcom/shabakaty/downloader/wi3$c$c;

.field public w:B

.field public x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wi3$c$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wi3$c$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/wi3$c;->z:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/wi3$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wi3$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/wi3$c;->y:Lcom/shabakaty/downloader/wi3$c;

    const/4 v1, -0x1

    .line 3
    iput v1, v0, Lcom/shabakaty/downloader/wi3$c;->t:I

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/shabakaty/downloader/wi3$c;->u:I

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/wi3$c$c;->t:Lcom/shabakaty/downloader/wi3$c$c;

    iput-object v1, v0, Lcom/shabakaty/downloader/wi3$c;->v:Lcom/shabakaty/downloader/wi3$c$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/wi3$c;->w:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/wi3$c;->x:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/wi3$c;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1;-><init>(Lcom/shabakaty/downloader/pp1$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/wi3$c;->w:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/wi3$c;->x:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/wi3$c;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 5

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 p2, -0x1

    .line 11
    iput-byte p2, p0, Lcom/shabakaty/downloader/wi3$c;->w:B

    .line 12
    iput p2, p0, Lcom/shabakaty/downloader/wi3$c;->x:I

    .line 13
    iput p2, p0, Lcom/shabakaty/downloader/wi3$c;->t:I

    const/4 p2, 0x0

    .line 14
    iput p2, p0, Lcom/shabakaty/downloader/wi3$c;->u:I

    .line 15
    sget-object p3, Lcom/shabakaty/downloader/wi3$c$c;->t:Lcom/shabakaty/downloader/wi3$c$c;

    iput-object p3, p0, Lcom/shabakaty/downloader/wi3$c;->v:Lcom/shabakaty/downloader/wi3$c$c;

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/ep;->u()Lcom/shabakaty/downloader/ep$b;

    move-result-object p3

    const/4 v0, 0x1

    .line 17
    invoke-static {p3, v0}, Lcom/shabakaty/downloader/w40;->k(Ljava/io/OutputStream;I)Lcom/shabakaty/downloader/w40;

    move-result-object v1

    :cond_0
    :goto_0
    if-nez p2, :cond_6

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v2

    if-eqz v2, :cond_5

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    const/16 v3, 0x18

    if-eq v2, v3, :cond_1

    .line 19
    invoke-virtual {p1, v2, v1}, Lcom/shabakaty/downloader/u40;->r(ILcom/shabakaty/downloader/w40;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v3

    .line 21
    invoke-static {v3}, Lcom/shabakaty/downloader/wi3$c$c;->f(I)Lcom/shabakaty/downloader/wi3$c$c;

    move-result-object v4

    if-nez v4, :cond_2

    .line 22
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/w40;->y(I)V

    .line 23
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/w40;->y(I)V

    goto :goto_0

    .line 24
    :cond_2
    iget v2, p0, Lcom/shabakaty/downloader/wi3$c;->s:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/shabakaty/downloader/wi3$c;->s:I

    .line 25
    iput-object v4, p0, Lcom/shabakaty/downloader/wi3$c;->v:Lcom/shabakaty/downloader/wi3$c$c;

    goto :goto_0

    .line 26
    :cond_3
    iget v2, p0, Lcom/shabakaty/downloader/wi3$c;->s:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/shabakaty/downloader/wi3$c;->s:I

    .line 27
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v2

    .line 28
    iput v2, p0, Lcom/shabakaty/downloader/wi3$c;->u:I

    goto :goto_0

    .line 29
    :cond_4
    iget v2, p0, Lcom/shabakaty/downloader/wi3$c;->s:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/shabakaty/downloader/wi3$c;->s:I

    .line 30
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v2

    .line 31
    iput v2, p0, Lcom/shabakaty/downloader/wi3$c;->t:I
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    const/4 p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 32
    :try_start_1
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p0, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 34
    throw p2

    :catch_1
    move-exception p1

    .line 35
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 36
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 38
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/wi3$c;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/wi3$c;->r:Lcom/shabakaty/downloader/ep;

    .line 39
    throw p1

    .line 40
    :cond_6
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 41
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/wi3$c;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p3}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/wi3$c;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/wi3$c;->w:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/wi3$c;->s:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 3
    iput-byte v2, p0, Lcom/shabakaty/downloader/wi3$c;->w:B

    return v2

    .line 4
    :cond_3
    iput-byte v1, p0, Lcom/shabakaty/downloader/wi3$c;->w:B

    return v1
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wi3$c$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wi3$c$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/wi3$c$b;->n(Lcom/shabakaty/downloader/wi3$c;)Lcom/shabakaty/downloader/wi3$c$b;

    return-object v0
.end method

.method public e()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/wi3$c;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/wi3$c;->s:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/wi3$c;->t:I

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/wi3$c;->s:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5
    iget v1, p0, Lcom/shabakaty/downloader/wi3$c;->u:I

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lcom/shabakaty/downloader/wi3$c;->s:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/wi3$c;->v:Lcom/shabakaty/downloader/wi3$c$c;

    .line 8
    iget v2, v2, Lcom/shabakaty/downloader/wi3$c$c;->r:I

    .line 9
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/w40;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/wi3$c;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 11
    iput v1, p0, Lcom/shabakaty/downloader/wi3$c;->x:I

    return v1
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/wi3$c;->e()I

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/wi3$c;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/wi3$c;->t:I

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/wi3$c;->s:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/wi3$c;->u:I

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 6
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/wi3$c;->s:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/wi3$c;->v:Lcom/shabakaty/downloader/wi3$c$c;

    .line 8
    iget v1, v1, Lcom/shabakaty/downloader/wi3$c$c;->r:I

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/w40;->n(II)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/wi3$c;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wi3$c$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wi3$c$b;-><init>()V

    return-object v0
.end method
