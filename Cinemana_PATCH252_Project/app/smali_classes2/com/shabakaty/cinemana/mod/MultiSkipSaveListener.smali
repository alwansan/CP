.class public final Lcom/shabakaty/cinemana/mod/MultiSkipSaveListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private final controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

.field private final edit:Landroid/widget/EditText;

.field private final toggle:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/Switch;Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/cinemana/mod/MultiSkipSaveListener;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/cinemana/mod/MultiSkipSaveListener;->edit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/shabakaty/cinemana/mod/MultiSkipSaveListener;->toggle:Landroid/widget/Switch;

    iput-object p4, p0, Lcom/shabakaty/cinemana/mod/MultiSkipSaveListener;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/MultiSkipSaveListener;->context:Landroid/content/Context;

    const-string v1, "cinemana_player_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/cinemana/mod/MultiSkipSaveListener;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x55

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/16 v4, 0xe10

    if-gt v2, v4, :cond_1

    goto :goto_0

    :cond_0
    const/16 v2, 0x55

    goto :goto_0

    :cond_1
    const/16 v2, 0xe10

    goto :goto_0

    :catch_0
    const/16 v2, 0x55

    :goto_0
    const-string v1, "multi_skip_seconds"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/shabakaty/cinemana/mod/MultiSkipSaveListener;->toggle:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const-string v2, "multi_skip_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/mod/MultiSkipSaveListener;->controller:Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;

    invoke-static {v0}, Lcom/shabakaty/cinemana/mod/PlayerEnhancements;->refreshMultiSkipButton(Lcom/shabakaty/cinemana/player/CinemanaPlayerControllerView;)V

    return-void
.end method
