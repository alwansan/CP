.class public Lcom/facebook/internal/WebDialog$Builder;
.super Ljava/lang/Object;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/facebook/internal/WebDialog$OnCompleteListener;

.field public e:Landroid/os/Bundle;

.field public f:Lcom/facebook/AccessToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/facebook/AccessToken;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->f:Lcom/facebook/AccessToken;

    .line 3
    invoke-static {}, Lcom/facebook/AccessToken;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/facebook/internal/Utility;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iput-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->b:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "Attempted to create a builder without a valid access token or a valid default Application ID."

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$Builder;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/facebook/internal/WebDialog$Builder;->c:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 9
    iput-object p3, p0, Lcom/facebook/internal/WebDialog$Builder;->e:Landroid/os/Bundle;

    goto :goto_1

    .line 10
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/WebDialog$Builder;->e:Landroid/os/Bundle;

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 12
    invoke-static {p1}, Lcom/facebook/internal/Utility;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v0, "applicationId"

    .line 13
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lcom/facebook/internal/WebDialog$Builder;->b:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$Builder;->a:Landroid/content/Context;

    .line 16
    iput-object p3, p0, Lcom/facebook/internal/WebDialog$Builder;->c:Ljava/lang/String;

    if-eqz p4, :cond_1

    .line 17
    iput-object p4, p0, Lcom/facebook/internal/WebDialog$Builder;->e:Landroid/os/Bundle;

    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/WebDialog$Builder;->e:Landroid/os/Bundle;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/internal/WebDialog;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->f:Lcom/facebook/AccessToken;

    const-string v1, "app_id"

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/facebook/internal/WebDialog$Builder;->e:Landroid/os/Bundle;

    .line 3
    iget-object v0, v0, Lcom/facebook/AccessToken;->y:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->e:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/facebook/internal/WebDialog$Builder;->f:Lcom/facebook/AccessToken;

    .line 6
    iget-object v1, v1, Lcom/facebook/AccessToken;->v:Ljava/lang/String;

    const-string v2, "access_token"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->e:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/facebook/internal/WebDialog$Builder;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$Builder;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/facebook/internal/WebDialog$Builder;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/internal/WebDialog$Builder;->e:Landroid/os/Bundle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/facebook/internal/WebDialog$Builder;->d:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .line 10
    invoke-static {v4}, Lcom/facebook/internal/WebDialog;->b(Landroid/content/Context;)V

    .line 11
    new-instance v0, Lcom/facebook/internal/WebDialog;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/facebook/internal/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/WebDialog$OnCompleteListener;)V

    return-object v0
.end method
