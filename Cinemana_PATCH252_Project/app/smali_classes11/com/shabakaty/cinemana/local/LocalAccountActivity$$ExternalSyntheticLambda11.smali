.class public final synthetic Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/local/LocalAccountActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda11;->f$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    iput-object p2, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda11;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda11;->f$0:Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    iget-object v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountActivity$$ExternalSyntheticLambda11;->f$1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountActivity;->lambda$render$7$com-shabakaty-cinemana-local-LocalAccountActivity(Landroid/graphics/Bitmap;)V

    return-void
.end method
