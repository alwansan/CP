.class public final Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;
.super Ljava/lang/Object;
.source "Ui7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Ui7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeasonSelection"
.end annotation


# instance fields
.field active:Z

.field public final adapter:Ljava/lang/Object;

.field public busy:Z

.field public final context:Landroid/content/Context;

.field count:Landroid/widget/TextView;

.field public final episodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public filter:Ljava/lang/String;

.field public final fragment:Ljava/lang/Object;

.field public final root:Landroid/view/View;

.field toolbar:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Ljava/util/List;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->filter:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->busy:Z

    .line 45
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->fragment:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->adapter:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->root:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->context:Landroid/content/Context;

    const-string p1, "com.shabakaty.cinemana.ca1.BatchDownload"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Ui7;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p4, p2, v0

    const-string p3, "episodeList"

    invoke-static {p1, p3, p2}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->episodes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public prioritize()V
    .locals 0

    .line 46
    return-void
.end method

.method public refresh()V
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->episodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "selected"

    invoke-static {v3, v5}, Lcom/shabakaty/cinemana/ca1/Ui7;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->count:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u062d\u0644\u0642\u0629 \u0645\u062d\u062f\u062f\u0629"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Ui7$SeasonSelection;->adapter:Ljava/lang/Object;

    const-string v3, "notifyDataSetChanged"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "season_selection"

    invoke-static {v2, v0, v1}, Lcom/shabakaty/cinemana/ca1/Ui7;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
