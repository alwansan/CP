.class public final synthetic Lcom/shabakaty/downloader/y5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic s:I

.field public final synthetic t:Lcom/shabakaty/downloader/bd3$f;

.field public final synthetic u:Lcom/shabakaty/downloader/bd3$f;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;ILcom/shabakaty/downloader/bd3$f;Lcom/shabakaty/downloader/bd3$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/y5;->r:Lcom/shabakaty/downloader/t6$a;

    iput p2, p0, Lcom/shabakaty/downloader/y5;->s:I

    iput-object p3, p0, Lcom/shabakaty/downloader/y5;->t:Lcom/shabakaty/downloader/bd3$f;

    iput-object p4, p0, Lcom/shabakaty/downloader/y5;->u:Lcom/shabakaty/downloader/bd3$f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/y5;->r:Lcom/shabakaty/downloader/t6$a;

    iget v1, p0, Lcom/shabakaty/downloader/y5;->s:I

    iget-object v2, p0, Lcom/shabakaty/downloader/y5;->t:Lcom/shabakaty/downloader/bd3$f;

    iget-object v3, p0, Lcom/shabakaty/downloader/y5;->u:Lcom/shabakaty/downloader/bd3$f;

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->R(Lcom/shabakaty/downloader/t6$a;I)V

    .line 2
    invoke-interface {p1, v0, v2, v3, v1}, Lcom/shabakaty/downloader/t6;->i0(Lcom/shabakaty/downloader/t6$a;Lcom/shabakaty/downloader/bd3$f;Lcom/shabakaty/downloader/bd3$f;I)V

    return-void
.end method
