.class public final synthetic Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Object;ZLandroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda5;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda5;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda5;->f$3:Z

    iput-object p5, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda5;->f$4:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda5;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda5;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda5;->f$3:Z

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda5;->f$4:Landroid/app/AlertDialog;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/cinemana/ca1/Enhancements;->lambda$range$4(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Object;ZLandroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
