.class public final synthetic Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroid/graphics/Bitmap;

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/ca1/Player94$State;Ljava/lang/String;JLandroid/graphics/Bitmap;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;->f$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;->f$2:J

    iput-object p5, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;->f$3:Landroid/graphics/Bitmap;

    iput p6, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;->f$4:I

    iput-boolean p7, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;->f$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;->f$2:J

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;->f$3:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;->f$4:I

    iget-boolean v6, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$$ExternalSyntheticLambda1;->f$5:Z

    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/cinemana/ca1/Player94$State;->lambda$prepare$1$com-shabakaty-cinemana-ca1-Player94$State(Ljava/lang/String;JLandroid/graphics/Bitmap;IZ)V

    return-void
.end method
