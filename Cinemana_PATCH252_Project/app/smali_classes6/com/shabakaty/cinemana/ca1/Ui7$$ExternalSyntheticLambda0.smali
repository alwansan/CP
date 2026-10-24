.class public final synthetic Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/RadioGroup;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RadioGroup;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda0;->f$2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Ui7$$ExternalSyntheticLambda0;->f$2:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/shabakaty/cinemana/ca1/Ui7;->lambda$limitDialog$1(Landroid/widget/RadioGroup;Landroid/content/Context;Landroid/widget/TextView;Landroid/content/DialogInterface;I)V

    return-void
.end method
