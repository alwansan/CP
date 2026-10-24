.class public final Lcom/shabakaty/downloader/ii3$b;
.super Lcom/shabakaty/downloader/pp1;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/fs2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ii3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ii3$b$b;,
        Lcom/shabakaty/downloader/ii3$b$c;
    }
.end annotation


# static fields
.field public static final x:Lcom/shabakaty/downloader/ii3$b;

.field public static y:Lcom/shabakaty/downloader/na3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/na3<",
            "Lcom/shabakaty/downloader/ii3$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final r:Lcom/shabakaty/downloader/ep;

.field public s:I

.field public t:I

.field public u:Lcom/shabakaty/downloader/ii3$b$c;

.field public v:B

.field public w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ii3$b$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ii3$b$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ii3$b;->y:Lcom/shabakaty/downloader/na3;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ii3$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ii3$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/ii3$b;->x:Lcom/shabakaty/downloader/ii3$b;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lcom/shabakaty/downloader/ii3$b;->t:I

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/ii3$b$c;->G:Lcom/shabakaty/downloader/ii3$b$c;

    .line 5
    iput-object v1, v0, Lcom/shabakaty/downloader/ii3$b;->u:Lcom/shabakaty/downloader/ii3$b$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lcom/shabakaty/downloader/ii3$b;->v:B

    .line 8
    iput v0, p0, Lcom/shabakaty/downloader/ii3$b;->w:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/ep;->r:Lcom/shabakaty/downloader/ep;

    iput-object v0, p0, Lcom/shabakaty/downloader/ii3$b;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pp1$b;Lcom/shabakaty/downloader/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pp1;-><init>(Lcom/shabakaty/downloader/pp1$b;)V

    const/4 p2, -0x1

    .line 2
    iput-byte p2, p0, Lcom/shabakaty/downloader/ii3$b;->v:B

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/ii3$b;->w:I

    .line 4
    iget-object p1, p1, Lcom/shabakaty/downloader/pp1$b;->r:Lcom/shabakaty/downloader/ep;

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ii3$b;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/u40;Lcom/shabakaty/downloader/t81;Lcom/shabakaty/downloader/md0;)V
    .locals 6

    .line 10
    invoke-direct {p0}, Lcom/shabakaty/downloader/pp1;-><init>()V

    const/4 p3, -0x1

    .line 11
    iput-byte p3, p0, Lcom/shabakaty/downloader/ii3$b;->v:B

    .line 12
    iput p3, p0, Lcom/shabakaty/downloader/ii3$b;->w:I

    const/4 p3, 0x0

    .line 13
    iput p3, p0, Lcom/shabakaty/downloader/ii3$b;->t:I

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/ii3$b$c;->G:Lcom/shabakaty/downloader/ii3$b$c;

    .line 15
    iput-object v0, p0, Lcom/shabakaty/downloader/ii3$b;->u:Lcom/shabakaty/downloader/ii3$b$c;

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/ep;->u()Lcom/shabakaty/downloader/ep$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 17
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/w40;->k(Ljava/io/OutputStream;I)Lcom/shabakaty/downloader/w40;

    move-result-object v2

    :cond_0
    :goto_0
    if-nez p3, :cond_6

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->o()I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    const/16 v4, 0x12

    if-eq v3, v4, :cond_1

    .line 19
    invoke-virtual {p1, v3, v2}, Lcom/shabakaty/downloader/u40;->r(ILcom/shabakaty/downloader/w40;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 20
    iget v4, p0, Lcom/shabakaty/downloader/ii3$b;->s:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    .line 21
    iget-object v3, p0, Lcom/shabakaty/downloader/ii3$b;->u:Lcom/shabakaty/downloader/ii3$b$c;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v4, Lcom/shabakaty/downloader/ii3$b$c$b;

    invoke-direct {v4}, Lcom/shabakaty/downloader/ii3$b$c$b;-><init>()V

    .line 23
    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/ii3$b$c$b;->n(Lcom/shabakaty/downloader/ii3$b$c;)Lcom/shabakaty/downloader/ii3$b$c$b;

    move-object v3, v4

    .line 24
    :cond_2
    sget-object v4, Lcom/shabakaty/downloader/ii3$b$c;->H:Lcom/shabakaty/downloader/na3;

    invoke-virtual {p1, v4, p2}, Lcom/shabakaty/downloader/u40;->h(Lcom/shabakaty/downloader/na3;Lcom/shabakaty/downloader/t81;)Lcom/shabakaty/downloader/es2;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ii3$b$c;

    iput-object v4, p0, Lcom/shabakaty/downloader/ii3$b;->u:Lcom/shabakaty/downloader/ii3$b$c;

    if-eqz v3, :cond_3

    .line 25
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ii3$b$c$b;->n(Lcom/shabakaty/downloader/ii3$b$c;)Lcom/shabakaty/downloader/ii3$b$c$b;

    .line 26
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ii3$b$c$b;->l()Lcom/shabakaty/downloader/ii3$b$c;

    move-result-object v3

    iput-object v3, p0, Lcom/shabakaty/downloader/ii3$b;->u:Lcom/shabakaty/downloader/ii3$b$c;

    .line 27
    :cond_3
    iget v3, p0, Lcom/shabakaty/downloader/ii3$b;->s:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/shabakaty/downloader/ii3$b;->s:I

    goto :goto_0

    .line 28
    :cond_4
    iget v3, p0, Lcom/shabakaty/downloader/ii3$b;->s:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/shabakaty/downloader/ii3$b;->s:I

    .line 29
    invoke-virtual {p1}, Lcom/shabakaty/downloader/u40;->l()I

    move-result v3

    .line 30
    iput v3, p0, Lcom/shabakaty/downloader/ii3$b;->t:I
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    const/4 p3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    new-instance p2, Lcom/shabakaty/downloader/s32;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/s32;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p0, p2, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 33
    throw p2

    :catch_1
    move-exception p1

    .line 34
    iput-object p0, p1, Lcom/shabakaty/downloader/s32;->r:Lcom/shabakaty/downloader/es2;

    .line 35
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 37
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ii3$b;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ii3$b;->r:Lcom/shabakaty/downloader/ep;

    .line 38
    throw p1

    .line 39
    :cond_6
    :try_start_3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/w40;->j()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 40
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/ii3$b;->r:Lcom/shabakaty/downloader/ep;

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ep$b;->c()Lcom/shabakaty/downloader/ep;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ii3$b;->r:Lcom/shabakaty/downloader/ep;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/shabakaty/downloader/ii3$b;->v:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2
    :cond_1
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b;->s:I

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 3
    iput-byte v2, p0, Lcom/shabakaty/downloader/ii3$b;->v:B

    return v2

    :cond_3
    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 4
    iput-byte v2, p0, Lcom/shabakaty/downloader/ii3$b;->v:B

    return v2

    .line 5
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/ii3$b;->u:Lcom/shabakaty/downloader/ii3$b$c;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ii3$b$c;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7
    iput-byte v2, p0, Lcom/shabakaty/downloader/ii3$b;->v:B

    return v2

    .line 8
    :cond_6
    iput-byte v1, p0, Lcom/shabakaty/downloader/ii3$b;->v:B

    return v1
.end method

.method public c()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ii3$b$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ii3$b$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/ii3$b$b;->n(Lcom/shabakaty/downloader/ii3$b;)Lcom/shabakaty/downloader/ii3$b$b;

    return-object v0
.end method

.method public e()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b;->s:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b;->t:I

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lcom/shabakaty/downloader/ii3$b;->s:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ii3$b;->u:Lcom/shabakaty/downloader/ii3$b$c;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/w40;->e(ILcom/shabakaty/downloader/es2;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/ii3$b;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ep;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 7
    iput v1, p0, Lcom/shabakaty/downloader/ii3$b;->w:I

    return v1
.end method

.method public f(Lcom/shabakaty/downloader/w40;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ii3$b;->e()I

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b;->s:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b;->t:I

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->p(II)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/ii3$b;->s:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ii3$b;->u:Lcom/shabakaty/downloader/ii3$b$c;

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/w40;->r(ILcom/shabakaty/downloader/es2;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ii3$b;->r:Lcom/shabakaty/downloader/ep;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/w40;->u(Lcom/shabakaty/downloader/ep;)V

    return-void
.end method

.method public g()Lcom/shabakaty/downloader/es2$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ii3$b$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ii3$b$b;-><init>()V

    return-object v0
.end method
