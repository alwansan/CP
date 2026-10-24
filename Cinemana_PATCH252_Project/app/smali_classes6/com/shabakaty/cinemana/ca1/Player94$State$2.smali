.class Lcom/shabakaty/cinemana/ca1/Player94$State$2;
.super Ljava/lang/Object;
.source "Player94.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Player94$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;


# direct methods
.method constructor <init>(Lcom/shabakaty/cinemana/ca1/Player94$State;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 31
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget-boolean v0, v0, Lcom/shabakaty/cinemana/ca1/Player94$State;->live:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->syncIdentity()V

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preview"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget-boolean v0, v0, Lcom/shabakaty/cinemana/ca1/Player94$State;->loading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Player94$State;->box:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    const-string v1, "C"

    invoke-virtual {v0, v1}, Lcom/shabakaty/cinemana/ca1/Player94$State;->pos(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/PreviewTime97;->second(J)J

    move-result-wide v0

    mul-long v0, v0, v3

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    invoke-virtual {v5, v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Player94$State;->prepare(JZ)V

    :cond_1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State$2;->this$0:Lcom/shabakaty/cinemana/ca1/Player94$State;

    iget-object v0, v0, Lcom/shabakaty/cinemana/ca1/Player94$State;->h:Landroid/os/Handler;

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
