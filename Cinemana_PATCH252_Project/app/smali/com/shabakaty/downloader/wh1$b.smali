.class public final Lcom/shabakaty/downloader/wh1$b;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wh1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/shabakaty/downloader/g71;",
            ">;"
        }
    .end annotation
.end field

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lcom/shabakaty/downloader/ps2;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public n:Lcom/shabakaty/downloader/o01;

.field public o:J

.field public p:I

.field public q:I

.field public r:F

.field public s:I

.field public t:F

.field public u:[B

.field public v:I

.field public w:Lcom/shabakaty/downloader/v50;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/wh1$b;->f:I

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/wh1$b;->g:I

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/wh1$b;->l:I

    const-wide v1, 0x7fffffffffffffffL

    .line 5
    iput-wide v1, p0, Lcom/shabakaty/downloader/wh1$b;->o:J

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/wh1$b;->p:I

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/wh1$b;->q:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    iput v1, p0, Lcom/shabakaty/downloader/wh1$b;->r:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, Lcom/shabakaty/downloader/wh1$b;->t:F

    .line 10
    iput v0, p0, Lcom/shabakaty/downloader/wh1$b;->v:I

    .line 11
    iput v0, p0, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 12
    iput v0, p0, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 13
    iput v0, p0, Lcom/shabakaty/downloader/wh1$b;->z:I

    .line 14
    iput v0, p0, Lcom/shabakaty/downloader/wh1$b;->C:I

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/wh1;Lcom/shabakaty/downloader/wh1$a;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    .line 17
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/wh1$b;->b:Ljava/lang/String;

    .line 18
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1;->t:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/wh1$b;->c:Ljava/lang/String;

    .line 19
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->u:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->d:I

    .line 20
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->v:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->e:I

    .line 21
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->w:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->f:I

    .line 22
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->x:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->g:I

    .line 23
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1;->z:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/wh1$b;->h:Ljava/lang/String;

    .line 24
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1;->A:Lcom/shabakaty/downloader/ps2;

    iput-object p2, p0, Lcom/shabakaty/downloader/wh1$b;->i:Lcom/shabakaty/downloader/ps2;

    .line 25
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1;->B:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/wh1$b;->j:Ljava/lang/String;

    .line 26
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 27
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->D:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->l:I

    .line 28
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1;->E:Ljava/util/List;

    iput-object p2, p0, Lcom/shabakaty/downloader/wh1$b;->m:Ljava/util/List;

    .line 29
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1;->F:Lcom/shabakaty/downloader/o01;

    iput-object p2, p0, Lcom/shabakaty/downloader/wh1$b;->n:Lcom/shabakaty/downloader/o01;

    .line 30
    iget-wide v0, p1, Lcom/shabakaty/downloader/wh1;->G:J

    iput-wide v0, p0, Lcom/shabakaty/downloader/wh1$b;->o:J

    .line 31
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->H:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->p:I

    .line 32
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->I:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->q:I

    .line 33
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->J:F

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->r:F

    .line 34
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->K:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->s:I

    .line 35
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->L:F

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->t:F

    .line 36
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1;->M:[B

    iput-object p2, p0, Lcom/shabakaty/downloader/wh1$b;->u:[B

    .line 37
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->N:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->v:I

    .line 38
    iget-object p2, p1, Lcom/shabakaty/downloader/wh1;->O:Lcom/shabakaty/downloader/v50;

    iput-object p2, p0, Lcom/shabakaty/downloader/wh1$b;->w:Lcom/shabakaty/downloader/v50;

    .line 39
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->P:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->x:I

    .line 40
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->Q:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->y:I

    .line 41
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->R:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->z:I

    .line 42
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->S:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->A:I

    .line 43
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->T:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->B:I

    .line 44
    iget p2, p1, Lcom/shabakaty/downloader/wh1;->U:I

    iput p2, p0, Lcom/shabakaty/downloader/wh1$b;->C:I

    .line 45
    iget-object p1, p1, Lcom/shabakaty/downloader/wh1;->V:Ljava/lang/Class;

    iput-object p1, p0, Lcom/shabakaty/downloader/wh1$b;->D:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/wh1;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wh1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/wh1;-><init>(Lcom/shabakaty/downloader/wh1$b;Lcom/shabakaty/downloader/wh1$a;)V

    return-object v0
.end method

.method public b(I)Lcom/shabakaty/downloader/wh1$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/wh1$b;->a:Ljava/lang/String;

    return-object p0
.end method
