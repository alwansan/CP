.class public final Lcom/shabakaty/downloader/th1$a;
.super Ljava/lang/Object;
.source "FormBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/th1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/th1$a;->c:Ljava/nio/charset/Charset;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/th1$a;->a:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/th1$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/th1$a;
    .locals 13

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/th1$a;->a:Ljava/util/List;

    sget-object v12, Lcom/shabakaty/downloader/qw1;->l:Lcom/shabakaty/downloader/qw1$b;

    .line 2
    iget-object v10, p0, Lcom/shabakaty/downloader/th1$a;->c:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v11, 0x5b

    move-object v1, v12

    move-object v2, p1

    .line 3
    invoke-static/range {v1 .. v11}, Lcom/shabakaty/downloader/qw1$b;->a(Lcom/shabakaty/downloader/qw1$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/th1$a;->b:Ljava/util/List;

    .line 5
    iget-object v10, p0, Lcom/shabakaty/downloader/th1$a;->c:Ljava/nio/charset/Charset;

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v2, p2

    .line 6
    invoke-static/range {v1 .. v11}, Lcom/shabakaty/downloader/qw1$b;->a(Lcom/shabakaty/downloader/qw1$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b()Lcom/shabakaty/downloader/th1;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/th1;

    iget-object v1, p0, Lcom/shabakaty/downloader/th1$a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/shabakaty/downloader/th1$a;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/th1;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
