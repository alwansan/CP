.class public final Lcom/shabakaty/downloader/th1;
.super Lcom/shabakaty/downloader/yr3;
.source "FormBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/th1$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/shabakaty/downloader/fr2;


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/fr2;->g:Lcom/shabakaty/downloader/fr2$a;

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lcom/shabakaty/downloader/fr2$a;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/fr2;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/th1;->d:Lcom/shabakaty/downloader/fr2;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "encodedNames"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedValues"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/yr3;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/ry4;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/th1;->b:Ljava/util/List;

    .line 3
    invoke-static {p2}, Lcom/shabakaty/downloader/ry4;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/th1;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/th1;->f(Lcom/shabakaty/downloader/do;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lcom/shabakaty/downloader/fr2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/th1;->d:Lcom/shabakaty/downloader/fr2;

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/do;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/th1;->f(Lcom/shabakaty/downloader/do;Z)J

    return-void
.end method

.method public final f(Lcom/shabakaty/downloader/do;Z)J
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/zn;

    invoke-direct {p1}, Lcom/shabakaty/downloader/zn;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/shabakaty/downloader/do;->i()Lcom/shabakaty/downloader/zn;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/th1;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const/16 v2, 0x26

    .line 3
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/zn;->K(I)Lcom/shabakaty/downloader/zn;

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/th1;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/zn;->Y(Ljava/lang/String;)Lcom/shabakaty/downloader/zn;

    const/16 v2, 0x3d

    .line 5
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/zn;->K(I)Lcom/shabakaty/downloader/zn;

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/th1;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/zn;->Y(Ljava/lang/String;)Lcom/shabakaty/downloader/zn;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 7
    iget-wide v0, p1, Lcom/shabakaty/downloader/zn;->s:J

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/zn;->skip(J)V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0
.end method
