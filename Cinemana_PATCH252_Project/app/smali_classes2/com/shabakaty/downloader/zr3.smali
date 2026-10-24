.class public final Lcom/shabakaty/downloader/zr3;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zr3$a;
    }
.end annotation


# static fields
.field public static final l:[C

.field public static final m:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/shabakaty/downloader/qw1;

.field public c:Ljava/lang/String;

.field public d:Lcom/shabakaty/downloader/qw1$a;

.field public final e:Lcom/shabakaty/downloader/vr3$a;

.field public final f:Lcom/shabakaty/downloader/ts1$a;

.field public g:Lcom/shabakaty/downloader/fr2;

.field public final h:Z

.field public i:Lcom/shabakaty/downloader/sv2$a;

.field public j:Lcom/shabakaty/downloader/th1$a;

.field public k:Lcom/shabakaty/downloader/yr3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shabakaty/downloader/zr3;->l:[C

    const-string v0, "(.*/)?(\\.|%2e|%2E){1,2}(/.*)?"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/zr3;->m:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/qw1;Ljava/lang/String;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/fr2;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zr3;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/zr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/zr3;->c:Ljava/lang/String;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/vr3$a;

    invoke-direct {p1}, Lcom/shabakaty/downloader/vr3$a;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zr3;->e:Lcom/shabakaty/downloader/vr3$a;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/zr3;->g:Lcom/shabakaty/downloader/fr2;

    .line 7
    iput-boolean p6, p0, Lcom/shabakaty/downloader/zr3;->h:Z

    if-eqz p4, :cond_0

    .line 8
    invoke-virtual {p4}, Lcom/shabakaty/downloader/ts1;->l()Lcom/shabakaty/downloader/ts1$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/zr3;->f:Lcom/shabakaty/downloader/ts1$a;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/ts1$a;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ts1$a;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zr3;->f:Lcom/shabakaty/downloader/ts1$a;

    :goto_0
    if-eqz p7, :cond_1

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/th1$a;

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 11
    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/th1$a;-><init>(Ljava/nio/charset/Charset;I)V

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/zr3;->j:Lcom/shabakaty/downloader/th1$a;

    goto :goto_1

    :cond_1
    if-eqz p8, :cond_3

    .line 13
    new-instance p1, Lcom/shabakaty/downloader/sv2$a;

    invoke-direct {p1}, Lcom/shabakaty/downloader/sv2$a;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zr3;->i:Lcom/shabakaty/downloader/sv2$a;

    .line 14
    sget-object p2, Lcom/shabakaty/downloader/sv2;->g:Lcom/shabakaty/downloader/fr2;

    const-string p3, "type"

    .line 15
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object p3, p2, Lcom/shabakaty/downloader/fr2;->b:Ljava/lang/String;

    const-string p4, "multipart"

    .line 17
    invoke-static {p3, p4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 18
    iput-object p2, p1, Lcom/shabakaty/downloader/sv2$a;->b:Lcom/shabakaty/downloader/fr2;

    goto :goto_1

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "multipart != "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    if-eqz p3, :cond_0

    .line 1
    iget-object v12, v0, Lcom/shabakaty/downloader/zr3;->j:Lcom/shabakaty/downloader/th1$a;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    .line 2
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v13, v12, Lcom/shabakaty/downloader/th1$a;->a:Ljava/util/List;

    sget-object v14, Lcom/shabakaty/downloader/qw1;->l:Lcom/shabakaty/downloader/qw1$b;

    .line 4
    iget-object v10, v12, Lcom/shabakaty/downloader/th1$a;->c:Ljava/nio/charset/Charset;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v11, 0x53

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, v14

    move-object/from16 v2, p1

    .line 5
    invoke-static/range {v1 .. v11}, Lcom/shabakaty/downloader/qw1$b;->a(Lcom/shabakaty/downloader/qw1$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v13, v12, Lcom/shabakaty/downloader/th1$a;->b:Ljava/util/List;

    .line 7
    iget-object v10, v12, Lcom/shabakaty/downloader/th1$a;->c:Ljava/nio/charset/Charset;

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, v14

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v11, v21

    .line 8
    invoke-static/range {v1 .. v11}, Lcom/shabakaty/downloader/qw1$b;->a(Lcom/shabakaty/downloader/qw1$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/zr3;->j:Lcom/shabakaty/downloader/th1$a;

    move-object/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/th1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/th1$a;

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Content-Type"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/shabakaty/downloader/fr2;->b(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/zr3;->g:Lcom/shabakaty/downloader/fr2;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed content type: "

    invoke-static {v1, p2}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zr3;->f:Lcom/shabakaty/downloader/ts1$a;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/ts1$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/ts1$a;

    :goto_0
    return-void
.end method

.method public c(Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/yr3;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zr3;->i:Lcom/shabakaty/downloader/sv2$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "body"

    .line 2
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "Content-Type"

    .line 4
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ts1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    if-eqz p1, :cond_2

    const-string v2, "Content-Length"

    .line 5
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ts1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/sv2$c;

    invoke-direct {v2, p1, p2, v1}, Lcom/shabakaty/downloader/sv2$c;-><init>(Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/yr3;Lcom/shabakaty/downloader/nn0;)V

    const-string p1, "part"

    .line 7
    invoke-static {v2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, v0, Lcom/shabakaty/downloader/sv2$a;->c:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected header: Content-Length"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected header: Content-Type"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/zr3;->c:Ljava/lang/String;

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    .line 2
    iget-object v3, v0, Lcom/shabakaty/downloader/zr3;->b:Lcom/shabakaty/downloader/qw1;

    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/qw1;->g(Ljava/lang/String;)Lcom/shabakaty/downloader/qw1$a;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/zr3;->d:Lcom/shabakaty/downloader/qw1$a;

    if-eqz v1, :cond_0

    .line 3
    iput-object v12, v0, Lcom/shabakaty/downloader/zr3;->c:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Malformed URL. Base: "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/shabakaty/downloader/zr3;->b:Lcom/shabakaty/downloader/qw1;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Relative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/shabakaty/downloader/zr3;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eqz p3, :cond_4

    .line 5
    iget-object v13, v0, Lcom/shabakaty/downloader/zr3;->d:Lcom/shabakaty/downloader/qw1$a;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "encodedName"

    .line 6
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, v13, Lcom/shabakaty/downloader/qw1$a;->g:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v13, Lcom/shabakaty/downloader/qw1$a;->g:Ljava/util/List;

    .line 8
    :cond_2
    iget-object v14, v13, Lcom/shabakaty/downloader/qw1$a;->g:Ljava/util/List;

    invoke-static {v14}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    sget-object v15, Lcom/shabakaty/downloader/qw1;->l:Lcom/shabakaty/downloader/qw1$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd3

    const-string v5, " \"\'<>#&="

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v11}, Lcom/shabakaty/downloader/qw1$b;->a(Lcom/shabakaty/downloader/qw1$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v13, v13, Lcom/shabakaty/downloader/qw1$a;->g:Ljava/util/List;

    invoke-static {v13}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd3

    const-string v5, " \"\'<>#&="

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v11}, Lcom/shabakaty/downloader/qw1$b;->a(Lcom/shabakaty/downloader/qw1$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v12

    :cond_3
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_4
    iget-object v13, v0, Lcom/shabakaty/downloader/zr3;->d:Lcom/shabakaty/downloader/qw1$a;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    .line 11
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v1, v13, Lcom/shabakaty/downloader/qw1$a;->g:Ljava/util/List;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v13, Lcom/shabakaty/downloader/qw1$a;->g:Ljava/util/List;

    .line 13
    :cond_5
    iget-object v14, v13, Lcom/shabakaty/downloader/qw1$a;->g:Ljava/util/List;

    invoke-static {v14}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    sget-object v15, Lcom/shabakaty/downloader/qw1;->l:Lcom/shabakaty/downloader/qw1$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xdb

    const-string v5, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v11}, Lcom/shabakaty/downloader/qw1$b;->a(Lcom/shabakaty/downloader/qw1$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v13, v13, Lcom/shabakaty/downloader/qw1$a;->g:Ljava/util/List;

    invoke-static {v13}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    if-eqz p2, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xdb

    const-string v5, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v11}, Lcom/shabakaty/downloader/qw1$b;->a(Lcom/shabakaty/downloader/qw1$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v12

    :cond_6
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
