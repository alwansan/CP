.class Lcom/cinemana/pro/logo/TmdbSettings$5;
.super Ljava/lang/Object;
.source "TmdbSettings.java"

# interfaces
.implements Lcom/cinemana/pro/logo/TmdbSettings$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cinemana/pro/logo/TmdbSettings;->openDialog(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Ljava/lang/Object;

.field final synthetic val$ar:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/cinemana/pro/logo/TmdbSettings$5;->val$activity:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/cinemana/pro/logo/TmdbSettings$5;->val$ar:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    const-string v0, ""

    invoke-static {v0}, Lcom/cinemana/pro/logo/TmdbLogo;->saveKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cinemana/pro/logo/TmdbSettings$5;->val$activity:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/cinemana/pro/logo/TmdbSettings$5;->val$ar:Z

    if-eqz v1, :cond_0

    const-string v1, "\u062a\u0639\u0630\u0631 \u0627\u0644\u062a\u0639\u0637\u064a\u0644"

    goto :goto_0

    :cond_0
    const-string v1, "Could not disable TMDB"

    :goto_0
    invoke-static {v0, v1}, Lcom/cinemana/pro/logo/TmdbSettings;->access$200(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    :cond_1
    return-void
.end method
