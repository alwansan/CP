.class public final Lcom/shabakaty/downloader/jr2$d;
.super Lcom/shabakaty/downloader/af2;
.source "MemberDeserializer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/jr2;->i(Ljava/util/List;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/List<",
        "+",
        "Lcom/shabakaty/downloader/r8;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/jr2;

.field public final synthetic s:Lcom/shabakaty/downloader/gj3;

.field public final synthetic t:Lcom/shabakaty/downloader/es2;

.field public final synthetic u:Lcom/shabakaty/downloader/i8;

.field public final synthetic v:I

.field public final synthetic w:Lcom/shabakaty/downloader/cj3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jr2;Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;ILcom/shabakaty/downloader/cj3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/jr2$d;->r:Lcom/shabakaty/downloader/jr2;

    iput-object p2, p0, Lcom/shabakaty/downloader/jr2$d;->s:Lcom/shabakaty/downloader/gj3;

    iput-object p3, p0, Lcom/shabakaty/downloader/jr2$d;->t:Lcom/shabakaty/downloader/es2;

    iput-object p4, p0, Lcom/shabakaty/downloader/jr2$d;->u:Lcom/shabakaty/downloader/i8;

    iput p5, p0, Lcom/shabakaty/downloader/jr2$d;->v:I

    iput-object p6, p0, Lcom/shabakaty/downloader/jr2$d;->w:Lcom/shabakaty/downloader/cj3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jr2$d;->r:Lcom/shabakaty/downloader/jr2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/jr2;->a:Lcom/shabakaty/downloader/rr0;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/rr0;->a:Lcom/shabakaty/downloader/or0;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/or0;->e:Lcom/shabakaty/downloader/l8;

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/jr2$d;->s:Lcom/shabakaty/downloader/gj3;

    iget-object v3, p0, Lcom/shabakaty/downloader/jr2$d;->t:Lcom/shabakaty/downloader/es2;

    iget-object v4, p0, Lcom/shabakaty/downloader/jr2$d;->u:Lcom/shabakaty/downloader/i8;

    iget v5, p0, Lcom/shabakaty/downloader/jr2$d;->v:I

    iget-object v6, p0, Lcom/shabakaty/downloader/jr2$d;->w:Lcom/shabakaty/downloader/cj3;

    invoke-interface/range {v1 .. v6}, Lcom/shabakaty/downloader/l8;->a(Lcom/shabakaty/downloader/gj3;Lcom/shabakaty/downloader/es2;Lcom/shabakaty/downloader/i8;ILcom/shabakaty/downloader/cj3;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
