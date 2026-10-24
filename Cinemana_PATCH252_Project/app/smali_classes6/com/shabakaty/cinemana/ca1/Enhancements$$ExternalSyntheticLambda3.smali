.class public final synthetic Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda3;->f$0:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda3;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda3;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda3;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda3;->f$0:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda3;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda3;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/shabakaty/cinemana/ca1/Enhancements$$ExternalSyntheticLambda3;->f$4:Z

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/cinemana/ca1/Enhancements;->lambda$range$5(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Object;ZLandroid/content/DialogInterface;)V

    return-void
.end method
