.class Lcom/cinemana/pro/logo/TmdbSettings$4;
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

.field final synthetic val$input:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/cinemana/pro/logo/TmdbSettings$4;->val$input:Ljava/lang/Object;

    iput-object p2, p0, Lcom/cinemana/pro/logo/TmdbSettings$4;->val$activity:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/cinemana/pro/logo/TmdbSettings$4;->val$ar:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/cinemana/pro/logo/TmdbSettings$4;->val$input:Ljava/lang/Object;

    const-string v1, "getText"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/cinemana/pro/logo/TmdbSettings;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/cinemana/pro/logo/TmdbLogo;->saveKey(Ljava/lang/String;)Z

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/cinemana/pro/logo/TmdbSettings$4;->val$activity:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cinemana/pro/logo/TmdbSettings$4;->val$ar:Z

    if-eqz v0, :cond_0

    const-string v0, "\u062a\u0645 \u0627\u0644\u062d\u0641\u0638"

    goto :goto_0

    :cond_0
    const-string v0, "Saved"

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/cinemana/pro/logo/TmdbSettings$4;->val$ar:Z

    if-eqz v0, :cond_2

    const-string v0, "\u062a\u0639\u0630\u0631 \u062d\u0641\u0638 \u0645\u0641\u062a\u0627\u062d API"

    goto :goto_0

    :cond_2
    const-string v0, "Could not save API key"

    :goto_0
    invoke-static {v1, v0}, Lcom/cinemana/pro/logo/TmdbSettings;->access$200(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v0, p0, Lcom/cinemana/pro/logo/TmdbSettings$4;->val$activity:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/cinemana/pro/logo/TmdbSettings$4;->val$ar:Z

    if-eqz v1, :cond_3

    const-string v1, "\u062a\u0639\u0630\u0631 \u0627\u0644\u062d\u0641\u0638"

    goto :goto_1

    :cond_3
    const-string v1, "Save failed"

    :goto_1
    invoke-static {v0, v1}, Lcom/cinemana/pro/logo/TmdbSettings;->access$200(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :goto_2
    return-void
.end method
