.class public final Lcom/shabakaty/downloader/ws3;
.super Ljava/lang/Object;
.source "Response.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ws3$a;
    }
.end annotation


# instance fields
.field public final A:Lcom/shabakaty/downloader/ws3;

.field public final B:Lcom/shabakaty/downloader/ws3;

.field public final C:J

.field public final D:J

.field public final E:Lcom/shabakaty/downloader/e61;

.field public r:Lcom/shabakaty/downloader/qp;

.field public final s:Lcom/shabakaty/downloader/vr3;

.field public final t:Lcom/shabakaty/downloader/mj3;

.field public final u:Ljava/lang/String;

.field public final v:I

.field public final w:Lcom/shabakaty/downloader/is1;

.field public final x:Lcom/shabakaty/downloader/ts1;

.field public final y:Lcom/shabakaty/downloader/ys3;

.field public final z:Lcom/shabakaty/downloader/ws3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vr3;Lcom/shabakaty/downloader/mj3;Ljava/lang/String;ILcom/shabakaty/downloader/is1;Lcom/shabakaty/downloader/ts1;Lcom/shabakaty/downloader/ys3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;Lcom/shabakaty/downloader/ws3;JJLcom/shabakaty/downloader/e61;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    const-string v5, "request"

    invoke-static {p1, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "protocol"

    invoke-static {p2, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "message"

    invoke-static {p3, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headers"

    invoke-static {p6, v5}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    iput-object v2, v0, Lcom/shabakaty/downloader/ws3;->t:Lcom/shabakaty/downloader/mj3;

    iput-object v3, v0, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lcom/shabakaty/downloader/ws3;->v:I

    move-object v1, p5

    iput-object v1, v0, Lcom/shabakaty/downloader/ws3;->w:Lcom/shabakaty/downloader/is1;

    iput-object v4, v0, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    move-object v1, p7

    iput-object v1, v0, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    move-object v1, p8

    iput-object v1, v0, Lcom/shabakaty/downloader/ws3;->z:Lcom/shabakaty/downloader/ws3;

    move-object v1, p9

    iput-object v1, v0, Lcom/shabakaty/downloader/ws3;->A:Lcom/shabakaty/downloader/ws3;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/shabakaty/downloader/ws3;->B:Lcom/shabakaty/downloader/ws3;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lcom/shabakaty/downloader/ws3;->C:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/shabakaty/downloader/ws3;->D:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/shabakaty/downloader/ws3;->E:Lcom/shabakaty/downloader/e61;

    return-void
.end method

.method public static b(Lcom/shabakaty/downloader/ws3;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "name"

    .line 2
    invoke-static {p1, p3}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ts1;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2
.end method


# virtual methods
.method public final a()Lcom/shabakaty/downloader/qp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ws3;->r:Lcom/shabakaty/downloader/qp;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/qp;->o:Lcom/shabakaty/downloader/qp$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/ws3;->x:Lcom/shabakaty/downloader/ts1;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qp$a;->b(Lcom/shabakaty/downloader/ts1;)Lcom/shabakaty/downloader/qp;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/ws3;->r:Lcom/shabakaty/downloader/qp;

    :cond_0
    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ws3;->v:I

    const/16 v1, 0xc8

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x12b

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ws3;->y:Lcom/shabakaty/downloader/ys3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ys3;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Response{protocol="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ws3;->t:Lcom/shabakaty/downloader/mj3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/ws3;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/ws3;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/ws3;->s:Lcom/shabakaty/downloader/vr3;

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/vr3;->b:Lcom/shabakaty/downloader/qw1;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
