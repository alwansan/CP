.class Lcom/shabakaty/cinemana/ca1/LegacyDialogs144$2;
.super Ljava/lang/Object;
.source "LegacyDialogs144.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/LegacyDialogs144;->showDownloadLimit(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$p:Landroid/content/SharedPreferences;

.field final synthetic val$selected:[I

.field final synthetic val$target:Landroid/widget/TextView;


# direct methods
.method constructor <init>([ILandroid/content/SharedPreferences;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144$2;->val$selected:[I

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144$2;->val$p:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144$2;->val$target:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 34
    iget-object p1, p0, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144$2;->val$selected:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    .line 35
    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144$2;->val$p:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "parallel"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144;->access$000(I)V

    .line 37
    iget-object p2, p0, Lcom/shabakaty/cinemana/ca1/LegacyDialogs144$2;->val$target:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0639\u062f\u062f \u0627\u0644\u062a\u062d\u0645\u064a\u0644\u0627\u062a     "

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method
