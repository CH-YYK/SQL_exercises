# SQL_exercises

### substring project from left by x=commits and substring address from right by y=contributors
```sql
select left(project, commits) as project, right(address, contributors) as address from repositories
```

### 
