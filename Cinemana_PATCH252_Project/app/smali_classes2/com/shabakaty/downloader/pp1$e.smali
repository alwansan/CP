.class public final Lcom/shabakaty/downloader/pp1$e;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/shabakaty/downloader/ua1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pp1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ua1$a<",
        "Lcom/shabakaty/downloader/pp1$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/z22$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/z22$b<",
            "*>;"
        }
    .end annotation
.end field

.field public final s:I

.field public final t:Lcom/shabakaty/downloader/b75;

.field public final u:Z

.field public final v:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/z22$b;ILcom/shabakaty/downloader/b75;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/z22$b<",
            "*>;I",
            "Lcom/shabakaty/downloader/b75;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/pp1$e;->r:Lcom/shabakaty/downloader/z22$b;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/pp1$e;->s:I

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/pp1$e;->t:Lcom/shabakaty/downloader/b75;

    .line 5
    iput-boolean p4, p0, Lcom/shabakaty/downloader/pp1$e;->u:Z

    .line 6
    iput-boolean p5, p0, Lcom/shabakaty/downloader/pp1$e;->v:Z

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/pp1$e;

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/pp1$e;->s:I

    iget p1, p1, Lcom/shabakaty/downloader/pp1$e;->s:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/pp1$e;->s:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pp1$e;->u:Z

    return v0
.end method

.method public g()Lcom/shabakaty/downloader/b75;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$e;->t:Lcom/shabakaty/downloader/b75;

    return-object v0
.end method

.method public o()Lcom/shabakaty/downloader/d75;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pp1$e;->t:Lcom/shabakaty/downloader/b75;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/b75;->r:Lcom/shabakaty/downloader/d75;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pp1$e;->v:Z

    return v0
.end method

.method public x(Lcom/shabakaty/downloader/es2$a;Lcom/shabakaty/downloader/es2;)Lcom/shabakaty/downloader/es2$a;
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/pp1$b;

    check-cast p2, Lcom/shabakaty/downloader/pp1;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/pp1$b;->k(Lcom/shabakaty/downloader/pp1;)Lcom/shabakaty/downloader/pp1$b;

    move-result-object p1

    return-object p1
.end method
