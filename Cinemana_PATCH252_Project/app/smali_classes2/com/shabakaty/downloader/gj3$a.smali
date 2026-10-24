.class public final Lcom/shabakaty/downloader/gj3$a;
.super Lcom/shabakaty/downloader/gj3;
.source "ProtoContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gj3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final d:Lcom/shabakaty/downloader/ji3;

.field public final e:Lcom/shabakaty/downloader/gj3$a;

.field public final f:Lcom/shabakaty/downloader/v20;

.field public final g:Lcom/shabakaty/downloader/ji3$c;

.field public final h:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ji3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/gj3$a;)V
    .locals 1

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/shabakaty/downloader/gj3;-><init>(Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/bu4;Lcom/shabakaty/downloader/s94;Lcom/shabakaty/downloader/nn0;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/gj3$a;->d:Lcom/shabakaty/downloader/ji3;

    .line 3
    iput-object p5, p0, Lcom/shabakaty/downloader/gj3$a;->e:Lcom/shabakaty/downloader/gj3$a;

    .line 4
    iget p3, p1, Lcom/shabakaty/downloader/ji3;->v:I

    .line 5
    invoke-static {p2, p3}, Lcom/shabakaty/downloader/rm3;->h(Lcom/shabakaty/downloader/jw2;I)Lcom/shabakaty/downloader/v20;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/gj3$a;->f:Lcom/shabakaty/downloader/v20;

    .line 6
    sget-object p2, Lcom/shabakaty/downloader/zd1;->f:Lcom/shabakaty/downloader/zd1$d;

    .line 7
    iget p3, p1, Lcom/shabakaty/downloader/ji3;->u:I

    .line 8
    invoke-virtual {p2, p3}, Lcom/shabakaty/downloader/zd1$d;->b(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/shabakaty/downloader/ji3$c;

    if-nez p2, :cond_0

    sget-object p2, Lcom/shabakaty/downloader/ji3$c;->s:Lcom/shabakaty/downloader/ji3$c;

    :cond_0
    iput-object p2, p0, Lcom/shabakaty/downloader/gj3$a;->g:Lcom/shabakaty/downloader/ji3$c;

    .line 9
    sget-object p2, Lcom/shabakaty/downloader/zd1;->g:Lcom/shabakaty/downloader/zd1$b;

    .line 10
    iget p1, p1, Lcom/shabakaty/downloader/ji3;->u:I

    const-string p3, "IS_INNER.get(classProto.flags)"

    .line 11
    invoke-static {p2, p1, p3}, Lcom/shabakaty/downloader/j;->a(Lcom/shabakaty/downloader/zd1$b;ILjava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shabakaty/downloader/gj3$a;->h:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/fi1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gj3$a;->f:Lcom/shabakaty/downloader/v20;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->b()Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    const-string v1, "classId.asSingleFqName()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
