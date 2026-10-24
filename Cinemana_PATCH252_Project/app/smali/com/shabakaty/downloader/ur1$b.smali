.class public final Lcom/shabakaty/downloader/ur1$b;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ur1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ur1$b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/fp4;

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/shabakaty/downloader/gw2$b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/shabakaty/downloader/gw2$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/a55;

.field public g:[B

.field public h:I

.field public i:I

.field public j:J

.field public k:Z

.field public l:J

.field public m:Lcom/shabakaty/downloader/ur1$b$a;

.field public n:Lcom/shabakaty/downloader/ur1$b$a;

.field public o:Z

.field public p:J

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fp4;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ur1$b;->a:Lcom/shabakaty/downloader/fp4;

    .line 3
    iput-boolean p2, p0, Lcom/shabakaty/downloader/ur1$b;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/shabakaty/downloader/ur1$b;->c:Z

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ur1$b;->d:Landroid/util/SparseArray;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ur1$b;->e:Landroid/util/SparseArray;

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/ur1$b$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ur1$b$a;-><init>(Lcom/shabakaty/downloader/ur1$a;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ur1$b;->m:Lcom/shabakaty/downloader/ur1$b$a;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/ur1$b$a;

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ur1$b$a;-><init>(Lcom/shabakaty/downloader/ur1$a;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ur1$b;->n:Lcom/shabakaty/downloader/ur1$b$a;

    const/16 p1, 0x80

    new-array p1, p1, [B

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/ur1$b;->g:[B

    .line 10
    new-instance p2, Lcom/shabakaty/downloader/a55;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lcom/shabakaty/downloader/a55;-><init>([BII)V

    iput-object p2, p0, Lcom/shabakaty/downloader/ur1$b;->f:Lcom/shabakaty/downloader/a55;

    .line 11
    iput-boolean p3, p0, Lcom/shabakaty/downloader/ur1$b;->k:Z

    .line 12
    iput-boolean p3, p0, Lcom/shabakaty/downloader/ur1$b;->o:Z

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/ur1$b;->n:Lcom/shabakaty/downloader/ur1$b$a;

    .line 14
    iput-boolean p3, p1, Lcom/shabakaty/downloader/ur1$b$a;->b:Z

    .line 15
    iput-boolean p3, p1, Lcom/shabakaty/downloader/ur1$b$a;->a:Z

    return-void
.end method
