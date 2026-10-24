.class public final Lcom/shabakaty/downloader/sv2;
.super Lcom/shabakaty/downloader/yr3;
.source "MultipartBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/sv2$c;,
        Lcom/shabakaty/downloader/sv2$a;,
        Lcom/shabakaty/downloader/sv2$b;
    }
.end annotation


# static fields
.field public static final f:Lcom/shabakaty/downloader/fr2;

.field public static final g:Lcom/shabakaty/downloader/fr2;

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B

.field public static final k:Lcom/shabakaty/downloader/sv2$b;


# instance fields
.field public final b:Lcom/shabakaty/downloader/fr2;

.field public c:J

.field public final d:Lcom/shabakaty/downloader/fp;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sv2$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/shabakaty/downloader/sv2$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/sv2$b;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/sv2;->k:Lcom/shabakaty/downloader/sv2$b;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/fr2;->g:Lcom/shabakaty/downloader/fr2$a;

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lcom/shabakaty/downloader/fr2$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/sv2;->f:Lcom/shabakaty/downloader/fr2;

    const-string v0, "multipart/alternative"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/fr2$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    const-string v0, "multipart/digest"

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/fr2$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    const-string v0, "multipart/parallel"

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/fr2$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    const-string v0, "multipart/form-data"

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/fr2$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/sv2;->g:Lcom/shabakaty/downloader/fr2;

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/16 v2, 0x3a

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x20

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 6
    sput-object v1, Lcom/shabakaty/downloader/sv2;->h:[B

    new-array v1, v0, [B

    const/16 v2, 0xd

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 7
    sput-object v1, Lcom/shabakaty/downloader/sv2;->i:[B

    new-array v0, v0, [B

    const/16 v1, 0x2d

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    aput-byte v1, v0, v4

    .line 8
    sput-object v0, Lcom/shabakaty/downloader/sv2;->j:[B

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/fp;Lcom/shabakaty/downloader/fr2;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fp;",
            "Lcom/shabakaty/downloader/fr2;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/sv2$c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boundaryByteString"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/yr3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/sv2;->d:Lcom/shabakaty/downloader/fp;

    iput-object p3, p0, Lcom/shabakaty/downloader/sv2;->e:Ljava/util/List;

    .line 2
    sget-object p3, Lcom/shabakaty/downloader/fr2;->g:Lcom/shabakaty/downloader/fr2$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fp;->H()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/fr2$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/sv2;->b:Lcom/shabakaty/downloader/fr2;

    const-wide/16 p1, -0x1

    .line 5
    iput-wide p1, p0, Lcom/shabakaty/downloader/sv2;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/sv2;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/sv2;->f(Lcom/shabakaty/downloader/do;Z)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lcom/shabakaty/downloader/sv2;->c:J

    :cond_0
    return-wide v0
.end method

.method public b()Lcom/shabakaty/downloader/fr2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sv2;->b:Lcom/shabakaty/downloader/fr2;

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/do;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/sv2;->f(Lcom/shabakaty/downloader/do;Z)J

    return-void
.end method

.method public final f(Lcom/shabakaty/downloader/do;Z)J
    .locals 12

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/zn;

    invoke-direct {p1}, Lcom/shabakaty/downloader/zn;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/shabakaty/downloader/sv2;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_6

    .line 3
    iget-object v6, p0, Lcom/shabakaty/downloader/sv2;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/sv2$c;

    .line 4
    iget-object v7, v6, Lcom/shabakaty/downloader/sv2$c;->a:Lcom/shabakaty/downloader/ts1;

    .line 5
    iget-object v6, v6, Lcom/shabakaty/downloader/sv2$c;->b:Lcom/shabakaty/downloader/yr3;

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    sget-object v8, Lcom/shabakaty/downloader/sv2;->j:[B

    invoke-interface {p1, v8}, Lcom/shabakaty/downloader/do;->e1([B)Lcom/shabakaty/downloader/do;

    .line 7
    iget-object v8, p0, Lcom/shabakaty/downloader/sv2;->d:Lcom/shabakaty/downloader/fp;

    invoke-interface {p1, v8}, Lcom/shabakaty/downloader/do;->j0(Lcom/shabakaty/downloader/fp;)Lcom/shabakaty/downloader/do;

    .line 8
    sget-object v8, Lcom/shabakaty/downloader/sv2;->i:[B

    invoke-interface {p1, v8}, Lcom/shabakaty/downloader/do;->e1([B)Lcom/shabakaty/downloader/do;

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ts1;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    .line 10
    invoke-virtual {v7, v9}, Lcom/shabakaty/downloader/ts1;->i(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v10

    .line 11
    sget-object v11, Lcom/shabakaty/downloader/sv2;->h:[B

    invoke-interface {v10, v11}, Lcom/shabakaty/downloader/do;->e1([B)Lcom/shabakaty/downloader/do;

    move-result-object v10

    .line 12
    invoke-virtual {v7, v9}, Lcom/shabakaty/downloader/ts1;->n(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v10

    .line 13
    sget-object v11, Lcom/shabakaty/downloader/sv2;->i:[B

    invoke-interface {v10, v11}, Lcom/shabakaty/downloader/do;->e1([B)Lcom/shabakaty/downloader/do;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v6}, Lcom/shabakaty/downloader/yr3;->b()Lcom/shabakaty/downloader/fr2;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    .line 15
    invoke-interface {p1, v8}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v8

    .line 16
    iget-object v7, v7, Lcom/shabakaty/downloader/fr2;->a:Ljava/lang/String;

    .line 17
    invoke-interface {v8, v7}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v7

    .line 18
    sget-object v8, Lcom/shabakaty/downloader/sv2;->i:[B

    invoke-interface {v7, v8}, Lcom/shabakaty/downloader/do;->e1([B)Lcom/shabakaty/downloader/do;

    .line 19
    :cond_2
    invoke-virtual {v6}, Lcom/shabakaty/downloader/yr3;->a()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    .line 20
    invoke-interface {p1, v9}, Lcom/shabakaty/downloader/do;->w0(Ljava/lang/String;)Lcom/shabakaty/downloader/do;

    move-result-object v9

    .line 21
    invoke-interface {v9, v7, v8}, Lcom/shabakaty/downloader/do;->t1(J)Lcom/shabakaty/downloader/do;

    move-result-object v9

    .line 22
    sget-object v10, Lcom/shabakaty/downloader/sv2;->i:[B

    invoke-interface {v9, v10}, Lcom/shabakaty/downloader/do;->e1([B)Lcom/shabakaty/downloader/do;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 23
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 24
    iget-wide p1, v0, Lcom/shabakaty/downloader/zn;->s:J

    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/zn;->skip(J)V

    return-wide v9

    .line 26
    :cond_4
    :goto_3
    sget-object v9, Lcom/shabakaty/downloader/sv2;->i:[B

    invoke-interface {p1, v9}, Lcom/shabakaty/downloader/do;->e1([B)Lcom/shabakaty/downloader/do;

    if-eqz p2, :cond_5

    add-long/2addr v3, v7

    goto :goto_4

    .line 27
    :cond_5
    invoke-virtual {v6, p1}, Lcom/shabakaty/downloader/yr3;->e(Lcom/shabakaty/downloader/do;)V

    .line 28
    :goto_4
    invoke-interface {p1, v9}, Lcom/shabakaty/downloader/do;->e1([B)Lcom/shabakaty/downloader/do;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 29
    :cond_6
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    sget-object v1, Lcom/shabakaty/downloader/sv2;->j:[B

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/do;->e1([B)Lcom/shabakaty/downloader/do;

    .line 30
    iget-object v2, p0, Lcom/shabakaty/downloader/sv2;->d:Lcom/shabakaty/downloader/fp;

    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/do;->j0(Lcom/shabakaty/downloader/fp;)Lcom/shabakaty/downloader/do;

    .line 31
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/do;->e1([B)Lcom/shabakaty/downloader/do;

    .line 32
    sget-object v1, Lcom/shabakaty/downloader/sv2;->i:[B

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/do;->e1([B)Lcom/shabakaty/downloader/do;

    if-eqz p2, :cond_7

    .line 33
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 34
    iget-wide p1, v0, Lcom/shabakaty/downloader/zn;->s:J

    add-long/2addr v3, p1

    .line 35
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/zn;->skip(J)V

    :cond_7
    return-wide v3
.end method
