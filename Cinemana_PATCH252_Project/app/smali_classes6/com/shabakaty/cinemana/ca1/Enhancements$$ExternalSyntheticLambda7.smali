.class public final synthetic Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda7;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda7;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda7;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Enhancements;->lambda$tick$1(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method
