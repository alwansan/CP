.class public final synthetic Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;

.field public final synthetic f$1:Landroid/widget/Switch;

.field public final synthetic f$2:Landroid/widget/Switch;

.field public final synthetic f$3:Landroid/widget/Switch;

.field public final synthetic f$4:[I

.field public final synthetic f$5:Landroid/widget/SeekBar;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;[ILandroid/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;->f$0:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;->f$1:Landroid/widget/Switch;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;->f$2:Landroid/widget/Switch;

    iput-object p4, p0, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;->f$3:Landroid/widget/Switch;

    iput-object p5, p0, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;->f$4:[I

    iput-object p6, p0, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;->f$5:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;->f$0:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;->f$1:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;->f$2:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;->f$3:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;->f$4:[I

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/Settings94$$ExternalSyntheticLambda2;->f$5:Landroid/widget/SeekBar;

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/shabakaty/cinemana/ca1/Settings94;->lambda$dialog$2(Landroid/content/SharedPreferences;Landroid/widget/Switch;Landroid/widget/Switch;Landroid/widget/Switch;[ILandroid/widget/SeekBar;Landroid/content/DialogInterface;I)V

    return-void
.end method
