.class public Lzendesk/belvedere/n;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lzendesk/belvedere/p$a;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lzendesk/belvedere/p$b;

.field public final synthetic d:Lzendesk/belvedere/p;


# direct methods
.method public constructor <init>(Lzendesk/belvedere/p;Landroid/content/Context;Ljava/util/List;Lzendesk/belvedere/p$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/n;->d:Lzendesk/belvedere/p;

    iput-object p2, p0, Lzendesk/belvedere/n;->a:Landroid/content/Context;

    iput-object p3, p0, Lzendesk/belvedere/n;->b:Ljava/util/List;

    iput-object p4, p0, Lzendesk/belvedere/n;->c:Lzendesk/belvedere/p$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lzendesk/belvedere/n;->d:Lzendesk/belvedere/p;

    iget-object p2, p0, Lzendesk/belvedere/n;->a:Landroid/content/Context;

    iget-object v0, p0, Lzendesk/belvedere/n;->b:Ljava/util/List;

    .line 2
    invoke-virtual {p1, p2, v0}, Lzendesk/belvedere/p;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lzendesk/belvedere/n;->d:Lzendesk/belvedere/p;

    iget-object v0, p0, Lzendesk/belvedere/n;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p2, v0}, Lzendesk/belvedere/p;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lzendesk/belvedere/n;->c:Lzendesk/belvedere/p$b;

    check-cast p2, Lzendesk/belvedere/a$b$a;

    invoke-virtual {p2, p1}, Lzendesk/belvedere/a$b$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/n;->c:Lzendesk/belvedere/p$b;

    check-cast p1, Lzendesk/belvedere/a$b$a;

    .line 7
    iget-object p1, p1, Lzendesk/belvedere/a$b$a;->a:Lzendesk/belvedere/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lcom/shabakaty/downloader/ji1;

    move-result-object p1

    if-eqz p1, :cond_1

    const p2, 0x7f120042

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
